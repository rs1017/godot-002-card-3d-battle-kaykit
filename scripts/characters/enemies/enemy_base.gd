class_name EnemyBase extends CharacterBody3D
## 적 캐릭터 기본 클래스
## 상태 기반 AI로 플레이어를 추적하고 공격합니다.

signal enemy_died
signal target_reached

enum EnemyState {
	IDLE,
	PATROL,
	CHASE,
	ATTACK,
	HIT,
	DEAD
}

@export_group("Stats")
@export var max_health: int = 50
@export var move_speed: float = 3.0
@export var attack_damage: int = 15
@export var attack_range: float = 1.5
@export var detection_range: float = 8.0
@export var lose_target_range: float = 12.0

@export_group("References")
@export var model: Node3D
@export var animation_player: AnimationPlayer
@export var navigation_agent: NavigationAgent3D

## 현재 상태
var current_state: EnemyState = EnemyState.IDLE
## 추적 대상 (플레이어)
var target: Node3D = null
## 공격 가능 여부
var can_attack: bool = true
## 체력
var health_points: int = 50

## 회전 속도
const ROTATION_SPEED: float = 12.0
## 중력
const GRAVITY: float = 30.0


func _ready() -> void:
	health_points = max_health
	add_to_group("enemies")

	# 컴포넌트 자동 검색
	if not model:
		model = get_node_or_null("Model")
	if not animation_player:
		animation_player = _find_animation_player(model)
	if not navigation_agent:
		navigation_agent = get_node_or_null("NavigationAgent3D")

	# NavigationAgent 설정
	if navigation_agent:
		navigation_agent.path_desired_distance = 0.5
		navigation_agent.target_desired_distance = 0.5

	# 애니메이션 목록 출력 (디버그용)
	if animation_player:
		print("[Enemy] %s animations: %s" % [name, str(animation_player.get_animation_list())])

	print("[Enemy] %s initialized" % name)


## GLB 모델 내부에서 AnimationPlayer 찾기
func _find_animation_player(node: Node) -> AnimationPlayer:
	if node == null:
		return null

	if node is AnimationPlayer:
		return node as AnimationPlayer

	for child in node.get_children():
		if child is AnimationPlayer:
			return child as AnimationPlayer
		var found: AnimationPlayer = _find_animation_player(child)
		if found:
			return found

	return null


func _physics_process(delta: float) -> void:
	match current_state:
		EnemyState.IDLE:
			_state_idle(delta)
		EnemyState.PATROL:
			_state_patrol(delta)
		EnemyState.CHASE:
			_state_chase(delta)
		EnemyState.ATTACK:
			_state_attack(delta)
		EnemyState.HIT:
			_state_hit(delta)
		EnemyState.DEAD:
			_state_dead(delta)

	# 중력 적용
	if not is_on_floor():
		velocity.y -= GRAVITY * delta

	move_and_slide()


## 대기 상태
func _state_idle(delta: float) -> void:
	_play_animation("Idle")
	velocity.x = move_toward(velocity.x, 0, 10.0 * delta)
	velocity.z = move_toward(velocity.z, 0, 10.0 * delta)

	# 플레이어 감지
	_detect_player()


## 순찰 상태 (미구현 - 확장용)
func _state_patrol(delta: float) -> void:
	_detect_player()


## 추적 상태
func _state_chase(delta: float) -> void:
	if not target or not is_instance_valid(target):
		_change_state(EnemyState.IDLE)
		return

	# 타겟과의 거리 확인
	var distance: float = global_position.distance_to(target.global_position)

	# 추적 범위 벗어남
	if distance > lose_target_range:
		target = null
		_change_state(EnemyState.IDLE)
		return

	# 공격 범위 진입
	if distance <= attack_range:
		_change_state(EnemyState.ATTACK)
		return

	# 네비게이션으로 이동
	if navigation_agent:
		navigation_agent.target_position = target.global_position

		if not navigation_agent.is_navigation_finished():
			var next_position: Vector3 = navigation_agent.get_next_path_position()
			var direction: Vector3 = (next_position - global_position).normalized()
			direction.y = 0

			velocity.x = direction.x * move_speed
			velocity.z = direction.z * move_speed

			# 이동 방향으로 회전
			_orient_to_direction(direction, delta)

	_play_animation("Walking_A")


## 공격 상태
func _state_attack(delta: float) -> void:
	velocity.x = move_toward(velocity.x, 0, 15.0 * delta)
	velocity.z = move_toward(velocity.z, 0, 15.0 * delta)

	if not target or not is_instance_valid(target):
		_change_state(EnemyState.IDLE)
		return

	# 타겟 방향으로 회전
	var direction: Vector3 = (target.global_position - global_position).normalized()
	direction.y = 0
	_orient_to_direction(direction, delta)

	# 공격 실행
	if can_attack:
		_perform_attack()


## 피격 상태
func _state_hit(delta: float) -> void:
	velocity.x = move_toward(velocity.x, 0, 20.0 * delta)
	velocity.z = move_toward(velocity.z, 0, 20.0 * delta)


## 사망 상태
func _state_dead(delta: float) -> void:
	velocity.x = move_toward(velocity.x, 0, 10.0 * delta)
	velocity.z = move_toward(velocity.z, 0, 10.0 * delta)


## 플레이어 감지
func _detect_player() -> void:
	var players: Array = get_tree().get_nodes_in_group("player")
	for player in players:
		if player is Node3D:
			var distance: float = global_position.distance_to(player.global_position)
			if distance <= detection_range:
				target = player
				_change_state(EnemyState.CHASE)
				print("[Enemy] %s detected player" % name)
				return


## 공격 수행
func _perform_attack() -> void:
	can_attack = false
	_play_animation("1H_Melee_Attack_Slice_Horizontal")

	# 공격 딜레이 후 데미지 적용
	await get_tree().create_timer(0.3).timeout
	_deal_damage()

	# 공격 쿨다운
	await get_tree().create_timer(0.5).timeout

	can_attack = true

	# 타겟 거리 재확인
	if target and is_instance_valid(target):
		var distance: float = global_position.distance_to(target.global_position)
		if distance > attack_range:
			_change_state(EnemyState.CHASE)


## 데미지 적용
func _deal_damage() -> void:
	if not target or not is_instance_valid(target):
		return

	var distance: float = global_position.distance_to(target.global_position)
	if distance <= attack_range * 1.2:
		if target.has_method("take_damage"):
			target.take_damage(attack_damage, self)
			print("[Enemy] %s dealt %d damage to %s" % [name, attack_damage, target.name])


## 피해 받기
func take_damage(amount: int, source: Node = null) -> void:
	if current_state == EnemyState.DEAD:
		return

	health_points -= amount
	print("[Enemy] %s took %d damage (HP: %d/%d)" % [name, amount, health_points, max_health])

	if health_points <= 0:
		_die()
	else:
		_change_state(EnemyState.HIT)
		_play_animation("Hit_A")

		# 넉백
		if source and source is Node3D:
			var knockback_dir: Vector3 = (global_position - source.global_position).normalized()
			knockback_dir.y = 0
			velocity += knockback_dir * 5.0

		# 피격 후 추적 재개
		await get_tree().create_timer(0.3).timeout
		if current_state == EnemyState.HIT:
			if target and is_instance_valid(target):
				_change_state(EnemyState.CHASE)
			else:
				_change_state(EnemyState.IDLE)


## 사망 처리
func _die() -> void:
	_change_state(EnemyState.DEAD)
	_play_animation("Death_A")
	enemy_died.emit()

	# 콜리전 비활성화
	set_collision_layer_value(3, false)

	# 일정 시간 후 제거
	await get_tree().create_timer(3.0).timeout
	queue_free()


## 상태 변경
func _change_state(new_state: EnemyState) -> void:
	if current_state == new_state:
		return
	current_state = new_state
	print("[Enemy] %s state: %s" % [name, EnemyState.keys()[new_state]])


## 방향으로 회전
func _orient_to_direction(direction: Vector3, delta: float) -> void:
	if direction.length() < 0.1:
		return
	var target_angle: float = atan2(direction.x, direction.z)
	rotation.y = lerp_angle(rotation.y, target_angle, ROTATION_SPEED * delta)


## 애니메이션 재생
func _play_animation(anim_name: String) -> void:
	if animation_player and animation_player.has_animation(anim_name):
		if animation_player.current_animation != anim_name:
			animation_player.play(anim_name)


## 생존 여부
func is_alive() -> bool:
	return current_state != EnemyState.DEAD
