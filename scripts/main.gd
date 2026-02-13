extends Node3D
## 메인 씬 스크립트 (레거시 - 카드 배틀에서는 main_menu.tscn 사용)

@onready var debug_label: Label = $UI/DebugLabel


func _ready() -> void:
	GameManager.change_state(GameManager.GameState.MAIN_MENU)
	print("[Main] Scene loaded")
	_update_debug_info()


func _process(_delta: float) -> void:
	_update_debug_info()


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		_start_card_battle()


func _update_debug_info() -> void:
	if debug_label:
		debug_label.text = "KayKit Card Battle v0.1.0\n"
		debug_label.text += "State: %s\n" % GameManager.GameState.keys()[GameManager.current_state]
		debug_label.text += "Press SPACE to start battle"


func _start_card_battle() -> void:
	print("[Main] Starting card battle...")
	GameManager.change_scene("res://scenes/battle/battle_board.tscn")
