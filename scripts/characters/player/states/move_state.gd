class_name PlayerMoveState extends State
## 플레이어 이동 상태

const MOVE_SPEED: float = 5.0
const ROTATION_SPEED: float = 12.0
const GRAVITY: float = 30.0


func enter() -> void:
	play_animation("Walking_A")


func physics_update(delta: float) -> void:
	var input_dir: Vector2 = Input.get_vector("move_left", "move_right", "move_up", "move_down")

	# 이동 입력이 없으면 Idle로 전환
	if input_dir.length() < 0.1:
		request_transition("Idle")
		return

	# 이동 방향 계산 (카메라 기준)
	var direction: Vector3 = Vector3(input_dir.x, 0, input_dir.y).normalized()

	# 캐릭터 회전 (이동 방향으로)
	if direction.length() > 0.1:
		var target_angle: float = atan2(direction.x, direction.z)
		character.rotation.y = lerp_angle(character.rotation.y, target_angle, ROTATION_SPEED * delta)

	# 속도 설정
	character.velocity.x = direction.x * MOVE_SPEED
	character.velocity.z = direction.z * MOVE_SPEED

	# 중력 적용
	if not character.is_on_floor():
		character.velocity.y -= GRAVITY * delta
	else:
		character.velocity.y = 0

	character.move_and_slide()


func handle_input(event: InputEvent) -> void:
	if event.is_action_pressed("attack"):
		request_transition("Attack")
	elif event.is_action_pressed("dodge"):
		request_transition("Dodge")
