class_name State extends Node
## 상태 머신의 기본 상태 클래스
## 모든 상태는 이 클래스를 상속받아 구현합니다.

signal transition_requested(new_state_name: String)

## 상태를 소유한 캐릭터 참조
var character: CharacterBody3D
## 애니메이션 플레이어 참조
var animation_player: AnimationPlayer


func _ready() -> void:
	# 상태가 씬 트리에 추가될 때 자동으로 비활성화
	set_physics_process(false)
	set_process(false)


## 상태 진입 시 호출
func enter() -> void:
	pass


## 상태 종료 시 호출
func exit() -> void:
	pass


## _physics_process 대신 사용 (StateMachine에서 호출)
func physics_update(delta: float) -> void:
	pass


## _process 대신 사용 (StateMachine에서 호출)
func frame_update(delta: float) -> void:
	pass


## 입력 이벤트 처리
func handle_input(event: InputEvent) -> void:
	pass


## 애니메이션 재생 헬퍼
func play_animation(anim_name: String) -> void:
	if animation_player and animation_player.has_animation(anim_name):
		animation_player.play(anim_name)


## 다른 상태로 전환 요청
func request_transition(new_state_name: String) -> void:
	transition_requested.emit(new_state_name)
