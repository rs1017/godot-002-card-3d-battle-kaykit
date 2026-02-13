class_name PlayerDeathState extends State
## 플레이어 사망 상태


func enter() -> void:
	play_animation("Death_A")
	character.velocity = Vector3.ZERO

	# 콜리전 비활성화 (선택적)
	# character.set_collision_layer_value(2, false)


func exit() -> void:
	pass


func physics_update(delta: float) -> void:
	# 중력만 적용
	if not character.is_on_floor():
		character.velocity.y -= 30.0 * delta
		character.move_and_slide()


func handle_input(event: InputEvent) -> void:
	# 사망 상태에서는 입력 무시
	pass
