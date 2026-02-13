class_name CombatSequence extends RefCounted
## 전투 시퀀스 오케스트레이터 - 공격/주문 연출 관리

signal sequence_finished

const DAMAGE_NUMBER_SCENE: String = "res://scenes/battle/effects/damage_number.tscn"
const SUMMON_BURST_SCENE: String = "res://scenes/battle/effects/summon_burst.tscn"
const SPELL_FIREBALL_SCENE: String = "res://scenes/battle/effects/spell_fireball.tscn"
const SPELL_HEAL_SCENE: String = "res://scenes/battle/effects/spell_heal.tscn"

var board: Node3D  ## battle_board 참조
var combat_camera: Node  ## CombatCamera
var _scene_tree: SceneTree


func setup(battle_board: Node3D, cam: Node) -> void:
	board = battle_board
	combat_camera = cam
	_scene_tree = battle_board.get_tree()


## 미니언 vs 미니언 공격 시퀀스 (중앙 전투)
func play_minion_attack(
	attacker: Node3D,  ## MinionOnBoard
	target: Node3D,  ## MinionOnBoard
	damage_to_target: int,
	damage_to_attacker: int
) -> void:
	if not board or not is_instance_valid(attacker):
		return

	var prev_state: int = GameManager.current_state
	GameManager.change_state(GameManager.GameState.BATTLE_ANIMATING)

	var attacker_pos: Vector3 = attacker.global_position
	var target_pos: Vector3 = target.global_position if is_instance_valid(target) else attacker_pos + Vector3(0, 0, -2)

	## 중앙 전투 위치 결정
	var attacker_is_player: bool = attacker_pos.z > 0
	var center_attacker: Vector3 = Vector3(0.0, 0.0, 1.2 if attacker_is_player else -1.2)
	var center_target: Vector3 = Vector3(0.0, 0.0, -1.2 if attacker_is_player else 1.2)

	## 0. Idle 배회 중지
	if is_instance_valid(attacker) and attacker.has_method("disable_idle_combat"):
		attacker.disable_idle_combat()
	if is_instance_valid(target) and target.has_method("disable_idle_combat"):
		target.disable_idle_combat()

	## 1. 카메라 줌인 (중앙으로)
	if combat_camera:
		await combat_camera.zoom_to_combat(center_attacker, center_target)

	## 2. 양쪽 동시에 중앙으로 이동
	if is_instance_valid(attacker):
		attacker.face_target(center_target)
	if is_instance_valid(target):
		target.face_target(center_attacker)

	## 동시 이동 (Tween 병렬)
	var move_tween: Tween = board.create_tween()
	move_tween.set_parallel(true)
	move_tween.set_ease(Tween.EASE_IN_OUT)
	move_tween.set_trans(Tween.TRANS_QUAD)
	if is_instance_valid(attacker):
		move_tween.tween_property(attacker, "global_position", center_attacker, 0.4)
	if is_instance_valid(target):
		move_tween.tween_property(target, "global_position", center_target, 0.4)
	await move_tween.finished

	## 3. 서로 마주보기
	if is_instance_valid(attacker) and is_instance_valid(target):
		attacker.face_target(target.global_position)
		target.face_target(attacker.global_position)

	## 4. 공격 애니메이션
	if is_instance_valid(attacker):
		attacker.play_attack_animation_enhanced()

	## 5. 히트 타이밍 대기
	await _scene_tree.create_timer(0.3).timeout

	## 6. 히트 리액션
	if is_instance_valid(target):
		target.play_hit_animation()
		_spawn_damage_number(damage_to_target, target.global_position)

	## 화면 흔들림
	if combat_camera:
		combat_camera.shake(0.12, 0.25)

	## 7. 공격자도 반격 데미지 표시
	if damage_to_attacker > 0 and is_instance_valid(attacker):
		await _scene_tree.create_timer(0.15).timeout
		_spawn_damage_number(damage_to_attacker, attacker.global_position)

	## 8. 양쪽 동시에 원위치 복귀
	await _scene_tree.create_timer(0.2).timeout
	var return_tween: Tween = board.create_tween()
	return_tween.set_parallel(true)
	return_tween.set_ease(Tween.EASE_IN_OUT)
	return_tween.set_trans(Tween.TRANS_QUAD)
	if is_instance_valid(attacker):
		return_tween.tween_property(attacker, "global_position", attacker_pos, 0.35)
	if is_instance_valid(target):
		return_tween.tween_property(target, "global_position", target_pos, 0.35)
	await return_tween.finished

	if is_instance_valid(attacker):
		attacker.face_forward()
		if attacker.has_method("enable_idle_combat"):
			attacker.enable_idle_combat()
	if is_instance_valid(target):
		target.face_forward()
		if target.has_method("enable_idle_combat"):
			target.enable_idle_combat()

	## 9. 카메라 복귀
	if combat_camera:
		await combat_camera.return_to_overview()

	## 10. 상태 복원
	GameManager.change_state(prev_state)
	sequence_finished.emit()


## 미니언 vs 영웅 공격 시퀀스 (공격자가 중앙으로 이동 후 공격)
func play_hero_attack(
	attacker: Node3D,  ## MinionOnBoard
	hero_pos: Vector3,
	damage: int
) -> void:
	if not board or not is_instance_valid(attacker):
		return

	var prev_state: int = GameManager.current_state
	GameManager.change_state(GameManager.GameState.BATTLE_ANIMATING)

	var attacker_pos: Vector3 = attacker.global_position

	## 중앙 전투 위치
	var attacker_is_player: bool = attacker_pos.z > 0
	var center_pos: Vector3 = Vector3(0.0, 0.0, 1.2 if attacker_is_player else -1.2)

	## 카메라 줌인 (중앙)
	if combat_camera:
		await combat_camera.zoom_to_combat(center_pos, hero_pos)

	## Idle 배회 중지
	if is_instance_valid(attacker) and attacker.has_method("disable_idle_combat"):
		attacker.disable_idle_combat()

	## 공격자 중앙으로 이동
	if is_instance_valid(attacker):
		attacker.face_target(hero_pos)
		await attacker.walk_to(center_pos)

	## 공격 애니메이션
	if is_instance_valid(attacker):
		attacker.play_attack_animation_enhanced()

	await _scene_tree.create_timer(0.3).timeout

	## 데미지 표시 + 흔들림
	_spawn_damage_number(damage, hero_pos + Vector3(0, 0.5, 0))
	if combat_camera:
		combat_camera.shake(0.18, 0.3)

	## 원위치 복귀
	await _scene_tree.create_timer(0.2).timeout
	if is_instance_valid(attacker):
		await attacker.walk_back_to(attacker_pos)
		attacker.face_forward()
		if attacker.has_method("enable_idle_combat"):
			attacker.enable_idle_combat()

	## 카메라 복귀
	if combat_camera:
		await combat_camera.return_to_overview()

	GameManager.change_state(prev_state)
	sequence_finished.emit()


## 소환 연출
func play_summon(minion: Node3D) -> void:  ## MinionOnBoard
	if not board or not is_instance_valid(minion):
		return

	var burst_scene: PackedScene = load(SUMMON_BURST_SCENE) as PackedScene
	if burst_scene:
		var burst: Node3D = burst_scene.instantiate()
		board.add_child(burst)
		burst.play_at(minion.global_position)

	## 미니언 자체 소환 애니메이션은 MinionOnBoard.play_summon_animation()에서 처리


## 주문 연출 (파이어볼)
func play_spell_fireball(caster_pos: Vector3, target_pos: Vector3, damage: int) -> void:
	if not board:
		return

	var prev_state: int = GameManager.current_state
	GameManager.change_state(GameManager.GameState.BATTLE_ANIMATING)

	## 카메라 줌
	if combat_camera:
		await combat_camera.zoom_to_spell(caster_pos, target_pos)

	## 파이어볼 발사
	var fireball_scene: PackedScene = load(SPELL_FIREBALL_SCENE) as PackedScene
	if fireball_scene:
		var fireball: Node3D = fireball_scene.instantiate()
		board.add_child(fireball)
		await fireball.fire_at(caster_pos, target_pos)

	## 데미지 표시
	_spawn_damage_number(damage, target_pos + Vector3(0, 0.5, 0))

	## 화면 흔들림
	if combat_camera:
		combat_camera.shake(0.2, 0.35)

	await _scene_tree.create_timer(0.3).timeout

	## 카메라 복귀
	if combat_camera:
		await combat_camera.return_to_overview()

	GameManager.change_state(prev_state)
	sequence_finished.emit()


## 주문 연출 (힐)
func play_spell_heal(target_pos: Vector3, amount: int) -> void:
	if not board:
		return

	var prev_state: int = GameManager.current_state
	GameManager.change_state(GameManager.GameState.BATTLE_ANIMATING)

	## 힐 이펙트
	var heal_scene: PackedScene = load(SPELL_HEAL_SCENE) as PackedScene
	if heal_scene:
		var heal: Node3D = heal_scene.instantiate()
		board.add_child(heal)
		heal.play_at_target(target_pos)

	## 힐 숫자
	_spawn_heal_number(amount, target_pos + Vector3(0, 0.5, 0))

	await _scene_tree.create_timer(0.8).timeout

	GameManager.change_state(prev_state)
	sequence_finished.emit()


## 데미지 숫자 생성
func _spawn_damage_number(amount: int, pos: Vector3) -> void:
	var scene: PackedScene = load(DAMAGE_NUMBER_SCENE) as PackedScene
	if not scene or not board:
		return
	var num: Node3D = scene.instantiate()
	board.add_child(num)
	num.show_damage(amount, pos)


## 힐 숫자 생성
func _spawn_heal_number(amount: int, pos: Vector3) -> void:
	var scene: PackedScene = load(DAMAGE_NUMBER_SCENE) as PackedScene
	if not scene or not board:
		return
	var num: Node3D = scene.instantiate()
	board.add_child(num)
	num.show_heal(amount, pos)
