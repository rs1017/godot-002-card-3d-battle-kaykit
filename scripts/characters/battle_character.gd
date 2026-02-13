extends CharacterBody3D
class_name BattleCharacter
## KayKit 캐릭터 베이스 클래스

signal health_changed(current: int, max_health: int)
signal died
signal animation_finished(anim_name: String)

## KayKit 모델 참조
@export var model_path: String = ""
@onready var kaykit_model: Node3D
@onready var anim_player: AnimationPlayer

## 캐릭터 스탯
@export var character_name: String = "Character"
@export var max_health: int = 100
@export var current_health: int = 100
@export var attack_power: int = 10
@export var defense: int = 5
@export var speed: int = 10

## 상태
var is_dead: bool = false

## KayKit 애니메이션 상수
const ANIM_IDLE: String = "Idle"
const ANIM_WALK: String = "Walking_A"
const ANIM_RUN: String = "Running_A"
const ANIM_ATTACK: String = "1H_Melee_Attack_Slice_Horizontal"
const ANIM_ATTACK_2H: String = "2H_Melee_Attack_Spin"
const ANIM_HIT: String = "Hit_A"
const ANIM_DEATH: String = "Death_A"
const ANIM_VICTORY: String = "Victory"

## 스탯 딕셔너리 (BattleManager용)
var stats: Dictionary:
	get:
		return {
			"name": character_name,
			"max_health": max_health,
			"current_health": current_health,
			"attack": attack_power,
			"defense": defense,
			"speed": speed
		}


func _ready() -> void:
	_setup_model()
	current_health = max_health


func _setup_model() -> void:
	# 첫 번째 Node3D 자식을 모델로 사용
	for child in get_children():
		if child is Node3D and child.name != "CollisionShape3D":
			kaykit_model = child
			break

	if kaykit_model:
		# AnimationPlayer 찾기
		anim_player = kaykit_model.get_node_or_null("AnimationPlayer")
		if not anim_player:
			# 재귀적으로 찾기
			anim_player = _find_animation_player(kaykit_model)

		if anim_player:
			anim_player.animation_finished.connect(_on_animation_finished)
			play_animation(ANIM_IDLE)


func _find_animation_player(node: Node) -> AnimationPlayer:
	for child in node.get_children():
		if child is AnimationPlayer:
			return child
		var result: AnimationPlayer = _find_animation_player(child)
		if result:
			return result
	return null


func play_animation(anim_name: String, speed_scale: float = 1.0) -> void:
	if anim_player and anim_player.has_animation(anim_name):
		anim_player.speed_scale = speed_scale
		anim_player.play(anim_name)
	else:
		push_warning("[BattleCharacter] Animation not found: %s" % anim_name)


func _on_animation_finished(anim_name: String) -> void:
	animation_finished.emit(anim_name)

	# 특정 애니메이션 후 Idle로 복귀
	if anim_name in [ANIM_ATTACK, ANIM_ATTACK_2H, ANIM_HIT, ANIM_VICTORY]:
		if not is_dead:
			play_animation(ANIM_IDLE)


## 전투 액션
func take_damage(amount: int) -> void:
	var actual_damage: int = maxi(1, amount - defense)
	current_health = maxi(0, current_health - actual_damage)

	health_changed.emit(current_health, max_health)
	print("[%s] Took %d damage (Health: %d/%d)" % [character_name, actual_damage, current_health, max_health])

	if current_health <= 0:
		die()
	else:
		play_animation(ANIM_HIT)


func heal(amount: int) -> void:
	current_health = mini(max_health, current_health + amount)
	health_changed.emit(current_health, max_health)
	print("[%s] Healed %d (Health: %d/%d)" % [character_name, amount, current_health, max_health])


func attack_target(target: BattleCharacter) -> void:
	if is_dead or target.is_dead:
		return

	play_animation(ANIM_ATTACK)

	# 애니메이션 중간에 데미지 적용 (타이밍 조절)
	await get_tree().create_timer(0.3).timeout
	target.take_damage(attack_power)


func die() -> void:
	if is_dead:
		return

	is_dead = true
	play_animation(ANIM_DEATH)
	died.emit()
	print("[%s] Died" % character_name)


func is_alive() -> bool:
	return not is_dead


func get_health_percent() -> float:
	return float(current_health) / float(max_health) if max_health > 0 else 0.0
