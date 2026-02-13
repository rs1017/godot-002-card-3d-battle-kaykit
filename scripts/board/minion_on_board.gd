class_name MinionOnBoard extends Node3D
## 필드 위의 3D 미니언

signal minion_clicked(minion: MinionOnBoard)
signal minion_hovered(minion: MinionOnBoard)
signal minion_unhovered(minion: MinionOnBoard)
signal death_animation_finished(minion: MinionOnBoard)

var card_data: CardData
var current_attack: int = 0
var current_health: int = 0
var max_health: int = 0
var can_attack: bool = false
var has_taunt: bool = false
var board_index: int = -1
var is_player_side: bool = true

var kaykit_model: Node3D = null
var animation_player: AnimationPlayer = null
var is_hovered: bool = false

## ── Idle 전투 스탠스 (슬롯 주변 배회) ──
var _home_pos: Vector3 = Vector3.ZERO
var _idle_active: bool = false
var _roam_timer: float = 0.0
var _next_roam_time: float = 2.0
var _is_roaming: bool = false

@onready var model_container: Node3D = $ModelContainer
@onready var atk_label: Label3D = $StatsDisplay/ATKLabel
@onready var hp_label: Label3D = $StatsDisplay/HPLabel
@onready var area_3d: Area3D = $Area3D
@onready var highlight: MeshInstance3D = $Highlight
@onready var taunt_indicator: MeshInstance3D = $TauntIndicator

const MODEL_SCALE: Vector3 = Vector3(0.6, 0.6, 0.6)


func _ready() -> void:
	if area_3d:
		area_3d.mouse_entered.connect(_on_mouse_entered)
		area_3d.mouse_exited.connect(_on_mouse_exited)
		area_3d.input_event.connect(_on_input_event)
	if highlight:
		highlight.visible = false
	if taunt_indicator:
		taunt_indicator.visible = false


func setup(card: CardData, minion_data: Dictionary, index: int, is_player: bool) -> void:
	card_data = card
	current_attack = minion_data["current_attack"]
	current_health = minion_data["current_health"]
	max_health = minion_data["max_health"]
	can_attack = minion_data["can_attack"]
	has_taunt = minion_data["has_taunt"]
	board_index = index
	is_player_side = is_player

	_load_kaykit_model()
	update_stats_display()

	if taunt_indicator and has_taunt:
		taunt_indicator.visible = true

	play_summon_animation()


func _load_kaykit_model() -> void:
	if not card_data or card_data.kaykit_model_path.is_empty():
		return

	if not ResourceLoader.exists(card_data.kaykit_model_path):
		print("[MinionOnBoard] Model not found: %s" % card_data.kaykit_model_path)
		return

	var model_scene: PackedScene = load(card_data.kaykit_model_path) as PackedScene
	if not model_scene:
		return

	kaykit_model = model_scene.instantiate()
	kaykit_model.scale = MODEL_SCALE
	## 회전은 model_container에서 face_forward()로 통합 관리

	if model_container:
		model_container.add_child(kaykit_model)

	## AnimationPlayer 찾기
	animation_player = _find_animation_player(kaykit_model)
	if animation_player and animation_player.has_animation("Idle"):
		animation_player.play("Idle")

	## 초기 방향 설정
	face_forward()


func _find_animation_player(node: Node) -> AnimationPlayer:
	if node is AnimationPlayer:
		return node as AnimationPlayer
	for child in node.get_children():
		var result: AnimationPlayer = _find_animation_player(child)
		if result:
			return result
	return null


func update_stats_display() -> void:
	if atk_label:
		atk_label.text = str(current_attack)
	if hp_label:
		hp_label.text = str(current_health)
		if current_health < max_health:
			hp_label.modulate = Color.RED
		else:
			hp_label.modulate = Color.WHITE


func sync_from_data(minion_data: Dictionary) -> void:
	current_attack = minion_data["current_attack"]
	current_health = minion_data["current_health"]
	can_attack = minion_data["can_attack"]
	update_stats_display()


func set_attackable(attackable: bool) -> void:
	if highlight:
		highlight.visible = attackable


var _original_rotation_y: float = 0.0


func setup_no_summon(card: CardData, minion_data: Dictionary, index: int, is_player: bool) -> void:
	card_data = card
	current_attack = minion_data["current_attack"]
	current_health = minion_data["current_health"]
	max_health = minion_data["max_health"]
	can_attack = minion_data["can_attack"]
	has_taunt = minion_data["has_taunt"]
	board_index = index
	is_player_side = is_player

	_load_kaykit_model()
	update_stats_display()

	if taunt_indicator and has_taunt:
		taunt_indicator.visible = true
	_original_rotation_y = rotation.y


func play_summon_animation() -> void:
	scale = Vector3.ZERO
	var tween: Tween = create_tween()
	tween.set_ease(Tween.EASE_OUT)
	tween.set_trans(Tween.TRANS_BACK)
	tween.tween_property(self, "scale", Vector3.ONE * 1.1, 0.3)
	tween.tween_property(self, "scale", Vector3.ONE, 0.1)
	_original_rotation_y = rotation.y


## 중앙에서 등장 후 보드 슬롯으로 걸어가는 연출
func spawn_at_center_then_walk(center_pos: Vector3, target_slot_pos: Vector3) -> void:
	## 중앙 위치에 배치
	global_position = center_pos

	## scale 0 → 1.3 → 1.0 (등장)
	scale = Vector3.ZERO
	var appear_tween: Tween = create_tween()
	appear_tween.set_ease(Tween.EASE_OUT)
	appear_tween.set_trans(Tween.TRANS_BACK)
	appear_tween.tween_property(self, "scale", Vector3.ONE * 1.3, 0.25)
	appear_tween.tween_property(self, "scale", Vector3.ONE, 0.1)
	await appear_tween.finished

	## Idle 애니메이션 + 잠시 캐릭터 보여주기
	if animation_player and animation_player.has_animation("Idle"):
		animation_player.play("Idle")
	await get_tree().create_timer(0.3).timeout

	## 보드 슬롯으로 걸어가기
	face_target(target_slot_pos)
	await walk_to(target_slot_pos)
	face_forward()

	if animation_player and animation_player.has_animation("Idle"):
		animation_player.play("Idle")

	## 슬롯 도착 후 idle 배회 시작
	enable_idle_combat()


## --- 강화된 전투 메서드 ---

func face_target(target_pos: Vector3) -> void:
	if model_container:
		var dir: Vector3 = target_pos - global_position
		dir.y = 0
		if dir.length() > 0.01:
			model_container.look_at(global_position + dir, Vector3.UP)
			model_container.rotate_y(PI)  ## KayKit 모델은 -Z가 전방


func face_forward() -> void:
	if model_container:
		if is_player_side:
			## 아군: 적(-Z) 방향으로
			model_container.rotation_degrees = Vector3(0, 180, 0)
		else:
			## 적: 플레이어(+Z) 방향 = 기본 방향
			model_container.rotation = Vector3.ZERO


func walk_to(target_pos: Vector3) -> void:
	if animation_player and animation_player.has_animation("Walking_A"):
		animation_player.play("Walking_A")

	var tween: Tween = create_tween()
	tween.set_ease(Tween.EASE_IN_OUT)
	tween.set_trans(Tween.TRANS_QUAD)
	tween.tween_property(self, "global_position", target_pos, 0.4)
	await tween.finished


func walk_back_to(original_pos: Vector3) -> void:
	if animation_player and animation_player.has_animation("Walking_A"):
		animation_player.play("Walking_A")

	var tween: Tween = create_tween()
	tween.set_ease(Tween.EASE_IN_OUT)
	tween.set_trans(Tween.TRANS_QUAD)
	tween.tween_property(self, "global_position", original_pos, 0.35)
	await tween.finished

	## Idle 복귀
	if animation_player and animation_player.has_animation("Idle"):
		animation_player.play("Idle")


func play_attack_animation_enhanced() -> void:
	## 카드 데이터의 attack_animation 사용
	var anim_name: String = "1H_Melee_Attack_Chop"
	if card_data and not card_data.attack_animation.is_empty():
		anim_name = card_data.attack_animation

	if animation_player and animation_player.has_animation(anim_name):
		animation_player.play(anim_name)
	elif animation_player and animation_player.has_animation("1H_Melee_Attack_Chop"):
		animation_player.play("1H_Melee_Attack_Chop")


func play_attack_animation(target_pos: Vector3) -> void:
	## 기존 호환성 유지 (간단한 전진+복귀)
	var original_pos: Vector3 = position
	var direction: Vector3 = (target_pos - position).normalized()
	var attack_pos: Vector3 = position + direction * 0.5

	play_attack_animation_enhanced()

	var tween: Tween = create_tween()
	tween.tween_property(self, "position", attack_pos, 0.15)
	tween.tween_property(self, "position", original_pos, 0.15)


func play_hit_animation() -> void:
	if animation_player and animation_player.has_animation("Hit_A"):
		animation_player.play("Hit_A")

	## 피격 표현: 빨간 플래시 + 스케일 펀치
	var original_scale: Vector3 = scale
	var tween: Tween = create_tween()
	tween.tween_property(self, "scale", original_scale * 0.85, 0.08)
	tween.tween_property(self, "scale", original_scale * 1.05, 0.08)
	tween.tween_property(self, "scale", original_scale, 0.06)


func play_death_animation() -> void:
	if animation_player and animation_player.has_animation("Death_A"):
		animation_player.play("Death_A")

	var tween: Tween = create_tween()
	tween.set_ease(Tween.EASE_IN)
	## 납작해지며 사라짐
	tween.tween_property(self, "scale", Vector3(1.2, 0.05, 1.2), 0.4)
	tween.tween_property(self, "scale", Vector3.ZERO, 0.2)
	await tween.finished
	death_animation_finished.emit(self)


## ── Idle 전투 스탠스 (슬롯 주변 배회) ──────────────────────────

func set_home_position(pos: Vector3) -> void:
	_home_pos = pos


func enable_idle_combat() -> void:
	_home_pos = position
	_idle_active = true
	_roam_timer = 0.0
	_next_roam_time = randf_range(1.5, 4.0)


func disable_idle_combat() -> void:
	_idle_active = false
	_is_roaming = false


func _process(delta: float) -> void:
	if not _idle_active or _is_roaming:
		return

	_roam_timer += delta
	if _roam_timer >= _next_roam_time:
		_roam_timer = 0.0
		_next_roam_time = randf_range(2.0, 5.0)
		_do_idle_roam()


func _do_idle_roam() -> void:
	_is_roaming = true

	var offset := Vector3(randf_range(-0.4, 0.4), 0.0, randf_range(-0.3, 0.3))
	var target_pos := _home_pos + offset

	## 이동 방향 쳐다보기
	var dir := target_pos - position
	if dir.length() > 0.05:
		face_target(global_position + dir)

	if animation_player and animation_player.has_animation("Walking_A"):
		animation_player.play("Walking_A")

	var tw := create_tween()
	tw.set_ease(Tween.EASE_IN_OUT)
	tw.set_trans(Tween.TRANS_SINE)
	tw.tween_property(self, "position", target_pos, randf_range(0.5, 0.9))
	tw.tween_callback(_on_roam_finished)


func _on_roam_finished() -> void:
	face_forward()
	if animation_player and animation_player.has_animation("Idle"):
		animation_player.play("Idle")
	_is_roaming = false


## ── 마우스 이벤트 ──────────────────────────────────────────

func _on_mouse_entered() -> void:
	is_hovered = true
	minion_hovered.emit(self)


func _on_mouse_exited() -> void:
	is_hovered = false
	minion_unhovered.emit(self)


func _on_input_event(_camera: Node, event: InputEvent, _position: Vector3, _normal: Vector3, _shape_idx: int) -> void:
	if event is InputEventMouseButton:
		var mb: InputEventMouseButton = event as InputEventMouseButton
		if mb.button_index == MOUSE_BUTTON_LEFT and mb.pressed:
			minion_clicked.emit(self)
