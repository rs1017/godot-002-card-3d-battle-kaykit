class_name PlayerIdleState extends State
## 플레이어 대기 상태


func enter() -> void:
	play_animation("Idle")


func physics_update(delta: float) -> void:
	# 이동 입력 확인
	var input_dir: Vector2 = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	if input_dir.length() > 0.1:
		request_transition("Move")
		return

	# 마찰 적용
	character.velocity.x = move_toward(character.velocity.x, 0, 20.0 * delta)
	character.velocity.z = move_toward(character.velocity.z, 0, 20.0 * delta)

	# 중력 적용
	if not character.is_on_floor():
		character.velocity.y -= 30.0 * delta

	character.move_and_slide()


func handle_input(event: InputEvent) -> void:
	if event.is_action_pressed("attack"):
		request_transition("Attack")
	elif event.is_action_pressed("dodge"):
		request_transition("Dodge")
