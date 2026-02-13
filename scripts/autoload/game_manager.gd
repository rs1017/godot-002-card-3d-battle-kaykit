extends Node
## 게임 전역 상태 관리 싱글톤
## KayKit 3D Card Battle용 게임 매니저

signal game_state_changed(new_state: GameState)
signal scene_change_requested(scene_path: String)

enum GameState {
	NONE,
	MAIN_MENU,
	BATTLE_IDLE,        ## 내 턴 - 대기
	BATTLE_DRAGGING,    ## 카드 드래그 중
	BATTLE_TARGETING,   ## 공격/주문 대상 선택
	BATTLE_ANIMATING,   ## 전투 애니메이션 재생
	BATTLE_ENEMY_TURN,  ## 적 턴
	PAUSED,
	GAME_OVER
}

var current_state: GameState = GameState.NONE
var previous_state: GameState = GameState.NONE
var is_paused: bool = false

var settings: Dictionary = {
	"master_volume": 1.0,
	"music_volume": 0.8,
	"sfx_volume": 1.0,
	"language": "ko"
}


func _ready() -> void:
	process_mode = Node.PROCESS_MODE_ALWAYS
	print("[GameManager] Initialized - Card Battle Mode")


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("pause"):
		if current_state != GameState.PAUSED and current_state != GameState.NONE and current_state != GameState.MAIN_MENU:
			pause_game()
		elif current_state == GameState.PAUSED:
			resume_game()


func change_state(new_state: GameState) -> void:
	if current_state == new_state:
		return
	previous_state = current_state
	current_state = new_state

	match new_state:
		GameState.PAUSED:
			Engine.time_scale = 0.0
		GameState.GAME_OVER:
			Engine.time_scale = 0.5
		_:
			Engine.time_scale = 1.0

	print("[GameManager] State: %s -> %s" % [
		GameState.keys()[previous_state],
		GameState.keys()[new_state]
	])
	game_state_changed.emit(new_state)


func change_scene(scene_path: String) -> void:
	scene_change_requested.emit(scene_path)
	get_tree().change_scene_to_file(scene_path)


func pause_game() -> void:
	is_paused = true
	change_state(GameState.PAUSED)
	get_tree().paused = true


func resume_game() -> void:
	is_paused = false
	get_tree().paused = false
	var restore_state: GameState = previous_state if previous_state != GameState.PAUSED else GameState.BATTLE_IDLE
	change_state(restore_state)


func is_player_turn() -> bool:
	return current_state in [GameState.BATTLE_IDLE, GameState.BATTLE_DRAGGING, GameState.BATTLE_TARGETING]


func can_interact() -> bool:
	return current_state == GameState.BATTLE_IDLE
