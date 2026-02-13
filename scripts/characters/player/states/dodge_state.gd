class_name PlayerDodgeState extends State
## 플레이어 회피(구르기) 상태
## 무적 프레임이 있는 회피 동작

const DODGE_SPEED: float = 10.0
const DODGE_DURATION: float = 0.5
const INVINCIBLE_START: float = 0.05
const INVINCIBLE_END: float = 0.4

var dodge_direction: Vector3
var dodge_timer: float = 0.0
var health_component: HealthComponent


func enter() -> void:
	dodge_timer = 0.0

	# 이동 방향 또는 캐릭터 전방으로 회피
	var input_dir: Vector2 = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	if input_dir.length() > 0.1:
		dodge_direction = Vector3(input_dir.x, 0, input_dir.y).normalized()
	else:
		dodge_direction = -character.transform.basis.z

	# 회피 방향으로 캐릭터 회전
	if dodge_direction.length() > 0.1:
		character.rotation.y = atan2(dodge_direction.x, dodge_direction.z)

	play_animation("Dodge_Right")

	# HealthComponent 참조
	health_component = character.get_node_or_null("HealthComponent") as HealthComponent


func exit() -> void:
	# 무적 해제
	if health_component:
		health_component.is_invincible = false


func physics_update(delta: float) -> void:
	dodge_timer += delta

	# 무적 프레임 처리
	if health_component:
		if dodge_timer >= INVINCIBLE_START and dodge_timer <= INVINCIBLE_END:
			health_component.is_invincible = true
		else:
			health_component.is_invincible = false

	# 회피 이동
	if dodge_timer < DODGE_DURATION:
		var speed_factor: float = 1.0 - (dodge_timer / DODGE_DURATION)
		character.velocity.x = dodge_direction.x * DODGE_SPEED * speed_factor
		character.velocity.z = dodge_direction.z * DODGE_SPEED * speed_factor
	else:
		character.velocity.x = 0
		character.velocity.z = 0

	# 중력 적용
	if not character.is_on_floor():
		character.velocity.y -= 30.0 * delta

	character.move_and_slide()

	# 회피 완료
	if dodge_timer >= DODGE_DURATION:
		request_transition("Idle")


func handle_input(event: InputEvent) -> void:
	# 회피 중에는 입력 무시
	pass
