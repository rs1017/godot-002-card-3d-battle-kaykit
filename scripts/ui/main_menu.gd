extends Control
## 메인 메뉴

@onready var start_button: Button = $VBoxContainer/StartButton
@onready var quit_button: Button = $VBoxContainer/QuitButton
@onready var player_count_option: OptionButton = $VBoxContainer/PlayerCountOption


func _ready() -> void:
	GameManager.change_state(GameManager.GameState.MAIN_MENU)
	if start_button:
		start_button.pressed.connect(_on_start_pressed)
		start_button.grab_focus()
	if quit_button:
		quit_button.pressed.connect(_on_quit_pressed)
	if player_count_option:
		player_count_option.clear()
		player_count_option.add_item("2 Players", 2)
		player_count_option.add_item("3 Players", 3)
		player_count_option.add_item("4 Players", 4)
		player_count_option.item_selected.connect(_on_player_count_selected)
		var default_idx: int = player_count_option.get_item_index(MultiplayerManager.get_player_count())
		player_count_option.select(default_idx if default_idx >= 0 else 2)
		_on_player_count_selected(player_count_option.selected)


func _on_start_pressed() -> void:
	GameManager.change_scene("res://scenes/battle/battle_board.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_player_count_selected(index: int) -> void:
	if not player_count_option:
		return
	var count: int = player_count_option.get_item_id(index)
	if MultiplayerManager:
		MultiplayerManager.set_player_count(count)
