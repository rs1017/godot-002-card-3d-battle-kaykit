class_name Card3D extends Node3D
## 3D 카드 오브젝트 - 호버/드래그/소환 인터랙션

signal card_clicked(card_node: Card3D)
signal card_hovered(card_node: Card3D)
signal card_unhovered(card_node: Card3D)
signal card_drag_started(card_node: Card3D)
signal card_drag_ended(card_node: Card3D, on_board: bool)

@export var card_data: CardData

var hand_index: int = -1
var is_hovered: bool = false
var is_dragging: bool = false
var is_playable: bool = false
var original_position: Vector3 = Vector3.ZERO
var original_rotation: Vector3 = Vector3.ZERO

@onready var card_mesh: MeshInstance3D = $CardMesh
@onready var area_3d: Area3D = $Area3D
@onready var cost_label: Label3D = $CostLabel
@onready var name_label: Label3D = $NameLabel
@onready var attack_label: Label3D = $AttackLabel
@onready var health_label: Label3D = $HealthLabel
@onready var desc_label: Label3D = $DescLabel

const HOVER_LIFT: float = 0.3
const HOVER_SCALE: float = 1.2
const TWEEN_DURATION: float = 0.15


func _ready() -> void:
	if area_3d:
		area_3d.mouse_entered.connect(_on_mouse_entered)
		area_3d.mouse_exited.connect(_on_mouse_exited)
		area_3d.input_event.connect(_on_input_event)
	if card_data:
		update_display()


func setup(data: CardData, index: int) -> void:
	card_data = data
	hand_index = index
	update_display()


func update_display() -> void:
	if not card_data:
		return
	if cost_label:
		cost_label.text = str(card_data.mana_cost)
	if name_label:
		name_label.text = card_data.card_name
	if desc_label:
		desc_label.text = card_data.description
	if attack_label:
		if card_data.card_type == CardData.CardType.MINION:
			attack_label.text = str(card_data.attack)
			attack_label.visible = true
		else:
			attack_label.visible = false
	if health_label:
		if card_data.card_type == CardData.CardType.MINION:
			health_label.text = str(card_data.health)
			health_label.visible = true
		else:
			health_label.visible = false
	## 카드 아트 텍스처 적용
	if card_data.card_art and card_mesh:
		var mat: StandardMaterial3D = card_mesh.get_surface_override_material(0) as StandardMaterial3D
		if not mat:
			mat = StandardMaterial3D.new()
			mat.albedo_color = Color(0.95, 0.92, 0.85, 1.0)
		mat.albedo_texture = card_data.card_art
		mat.uv1_scale = Vector3(1.0, 1.0, 1.0)
		card_mesh.set_surface_override_material(0, mat)


func set_playable(playable: bool) -> void:
	is_playable = playable
	if not card_mesh:
		return
	var mat: StandardMaterial3D = card_mesh.get_surface_override_material(0) as StandardMaterial3D
	if not mat:
		return
	if playable:
		mat.emission_enabled = true
		mat.emission = Color(0.2, 0.8, 0.2, 1.0)
		mat.emission_energy_multiplier = 0.3
	else:
		mat.emission_enabled = false


func _on_mouse_entered() -> void:
	if is_dragging:
		return
	is_hovered = true
	_animate_hover(true)
	card_hovered.emit(self)


func _on_mouse_exited() -> void:
	if is_dragging:
		return
	is_hovered = false
	_animate_hover(false)
	card_unhovered.emit(self)


func _on_input_event(_camera: Node, event: InputEvent, _position: Vector3, _normal: Vector3, _shape_idx: int) -> void:
	if event is InputEventMouseButton:
		var mb: InputEventMouseButton = event as InputEventMouseButton
		if mb.button_index == MOUSE_BUTTON_LEFT and mb.pressed:
			card_clicked.emit(self)


func _animate_hover(hover: bool) -> void:
	var tween: Tween = create_tween()
	tween.set_parallel(true)
	if hover:
		tween.tween_property(self, "position:y", original_position.y + HOVER_LIFT, TWEEN_DURATION)
		tween.tween_property(self, "scale", Vector3.ONE * HOVER_SCALE, TWEEN_DURATION)
	else:
		tween.tween_property(self, "position", original_position, TWEEN_DURATION)
		tween.tween_property(self, "scale", Vector3.ONE, TWEEN_DURATION)


func save_position() -> void:
	original_position = position
	original_rotation = rotation


func return_to_hand() -> void:
	is_dragging = false
	var tween: Tween = create_tween()
	tween.set_parallel(true)
	tween.tween_property(self, "position", original_position, 0.2)
	tween.tween_property(self, "rotation", original_rotation, 0.2)


## 카드 플레이 연출: 중앙으로 날아가며 소멸
func play_to_center(center_pos: Vector3) -> void:
	is_dragging = false

	## 1. 중앙 상공으로 날아감 (0.4s, 스케일 1.5배)
	var fly_target: Vector3 = center_pos + Vector3(0.0, 1.5, 0.0)
	var tween: Tween = create_tween()
	tween.set_parallel(true)
	tween.set_ease(Tween.EASE_OUT)
	tween.set_trans(Tween.TRANS_CUBIC)
	tween.tween_property(self, "global_position", fly_target, 0.4)
	tween.tween_property(self, "scale", Vector3.ONE * 1.5, 0.4)
	tween.tween_property(self, "rotation_degrees:x", 0.0, 0.4)
	await tween.finished

	## 2. Z축 360도 회전 (0.3s, 극적인 플립)
	var flip_tween: Tween = create_tween()
	flip_tween.set_ease(Tween.EASE_IN_OUT)
	flip_tween.set_trans(Tween.TRANS_QUAD)
	flip_tween.tween_property(self, "rotation_degrees:z", 360.0, 0.3)
	await flip_tween.finished

	## 3. 발광하며 소멸 (0.2s)
	if card_mesh:
		var mat: StandardMaterial3D = card_mesh.get_surface_override_material(0) as StandardMaterial3D
		if mat:
			mat.emission_enabled = true
			mat.emission = Color(1.0, 0.9, 0.5)
			mat.emission_energy_multiplier = 2.0

	var vanish_tween: Tween = create_tween()
	vanish_tween.set_parallel(true)
	vanish_tween.set_ease(Tween.EASE_IN)
	vanish_tween.set_trans(Tween.TRANS_QUAD)
	vanish_tween.tween_property(self, "scale", Vector3.ZERO, 0.2)
	await vanish_tween.finished

	queue_free()
