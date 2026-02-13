class_name PlayerHitState extends State
## 플레이어 피격 상태

const HIT_STUN_DURATION: float = 0.3

var hit_timer: float = 0.0


func enter() -> void:
	hit_timer = 0.0
	play_animation("Hit_A")


func physics_update(delta: float) -> void:
	hit_timer += delta

	# 넉백 감속
	character.velocity.x = move_toward(character.velocity.x, 0, 15.0 * delta)
	character.velocity.z = move_toward(character.velocity.z, 0, 15.0 * delta)

	# 중력 적용
	if not character.is_on_floor():
		character.velocity.y -= 30.0 * delta

	character.move_and_slide()

	# 피격 경직 종료
	if hit_timer >= HIT_STUN_DURATION:
		request_transition("Idle")


func handle_input(event: InputEvent) -> void:
	# 피격 중에는 입력 무시
	pass
