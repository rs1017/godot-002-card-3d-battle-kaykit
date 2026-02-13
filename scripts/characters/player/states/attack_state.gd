class_name PlayerAttackState extends State
## 플레이어 공격 상태

const ATTACK_ANIMS: Array[String] = [
	"1H_Melee_Attack_Slice_Horizontal",
	"1H_Melee_Attack_Slice_Diagonal",
	"1H_Melee_Attack_Chop"
]

var current_combo: int = 0
var can_combo: bool = false
var combo_requested: bool = false
var hitbox: HitBox


func enter() -> void:
	current_combo = 0
	can_combo = false
	combo_requested = false

	# HitBox 찾기
	hitbox = character.get_node_or_null("HitBox") as HitBox

	_play_attack_animation()


func exit() -> void:
	# HitBox 비활성화
	if hitbox:
		hitbox.disable()
	can_combo = false
	combo_requested = false


func _play_attack_animation() -> void:
	if current_combo < ATTACK_ANIMS.size():
		play_animation(ATTACK_ANIMS[current_combo])

		# 애니메이션 완료 시 처리
		if animation_player:
			if not animation_player.animation_finished.is_connected(_on_animation_finished):
				animation_player.animation_finished.connect(_on_animation_finished)


func physics_update(delta: float) -> void:
	# 공격 중 약간의 전진
	var forward: Vector3 = -character.transform.basis.z
	character.velocity.x = forward.x * 2.0
	character.velocity.z = forward.z * 2.0

	# 중력 적용
	if not character.is_on_floor():
		character.velocity.y -= 30.0 * delta

	character.move_and_slide()


func handle_input(event: InputEvent) -> void:
	# 콤보 입력 확인
	if event.is_action_pressed("attack") and can_combo:
		combo_requested = true


## 애니메이션 특정 프레임에서 호출 (AnimationPlayer에서 메서드 트랙으로 연결)
func enable_hitbox() -> void:
	if hitbox:
		hitbox.enable()


func disable_hitbox() -> void:
	if hitbox:
		hitbox.disable()


## 콤보 윈도우 시작
func start_combo_window() -> void:
	can_combo = true


## 콤보 윈도우 종료
func end_combo_window() -> void:
	can_combo = false


func _on_animation_finished(anim_name: String) -> void:
	if anim_name in ATTACK_ANIMS:
		if combo_requested and current_combo < ATTACK_ANIMS.size() - 1:
			# 다음 콤보
			current_combo += 1
			combo_requested = false
			can_combo = false
			_play_attack_animation()
		else:
			# 공격 종료, Idle로 복귀
			if animation_player.animation_finished.is_connected(_on_animation_finished):
				animation_player.animation_finished.disconnect(_on_animation_finished)
			request_transition("Idle")
