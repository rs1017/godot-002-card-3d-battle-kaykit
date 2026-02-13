class_name StateMachine extends Node
## 유한 상태 머신 (Finite State Machine) 구현
## 캐릭터의 상태를 관리하고 상태 간 전환을 처리합니다.

signal state_changed(old_state: State, new_state: State)

## 초기 상태 (에디터에서 지정)
@export var initial_state: State

## 현재 활성 상태
var current_state: State

## 상태 딕셔너리 (이름 -> State)
var _states: Dictionary = {}


func _ready() -> void:
	# 모든 자식 State 노드를 등록
	for child in get_children():
		if child is State:
			_states[child.name] = child
			child.transition_requested.connect(_on_transition_requested)

	# 초기 상태 설정
	if initial_state:
		current_state = initial_state
		current_state.enter()


func _process(delta: float) -> void:
	if current_state:
		current_state.frame_update(delta)


func _physics_process(delta: float) -> void:
	if current_state:
		current_state.physics_update(delta)


func _unhandled_input(event: InputEvent) -> void:
	if current_state:
		current_state.handle_input(event)


## 상태 전환 처리
func transition_to(state_name: String) -> void:
	if not _states.has(state_name):
		push_error("[StateMachine] State not found: %s" % state_name)
		return

	var new_state: State = _states[state_name]
	if new_state == current_state:
		return

	var old_state: State = current_state

	if current_state:
		current_state.exit()

	current_state = new_state
	current_state.enter()

	state_changed.emit(old_state, new_state)
	print("[StateMachine] %s -> %s" % [old_state.name if old_state else "None", new_state.name])


## 캐릭터와 애니메이션 플레이어 참조 설정
func setup(character: CharacterBody3D, animation_player: AnimationPlayer) -> void:
	for state in _states.values():
		state.character = character
		state.animation_player = animation_player


## 상태 전환 요청 시그널 핸들러
func _on_transition_requested(new_state_name: String) -> void:
	transition_to(new_state_name)


## 현재 상태 이름 반환
func get_current_state_name() -> String:
	return current_state.name if current_state else ""


## 특정 상태인지 확인
func is_in_state(state_name: String) -> bool:
	return current_state and current_state.name == state_name
