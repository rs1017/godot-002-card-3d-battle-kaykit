extends CanvasLayer
## 배틀 HUD - 마나, HP, 턴 종료 버튼, 배틀 로그

@onready var player_hp_label: Label = $PlayerPanel/VBox/PlayerHP
@onready var player_mana_label: Label = $PlayerPanel/VBox/PlayerMana
@onready var enemy_hp_label: Label = $EnemyPanel/VBox/EnemyHP
@onready var enemy_mana_label: Label = $EnemyPanel/VBox/EnemyMana
@onready var turn_label: Label = $TurnIndicator
@onready var end_turn_button: Button = $EndTurnButton
@onready var battle_log: RichTextLabel = $BattleLog
@onready var game_over_panel: Panel = $GameOverPanel
@onready var game_over_label: Label = $GameOverPanel/GameOverLabel
@onready var restart_button: Button = $GameOverPanel/RestartButton
@onready var card_detail_popup: PanelContainer = $CardDetailPopup
@onready var card_name_label: Label = $CardDetailPopup/VBox/CardName
@onready var card_cost_label: Label = $CardDetailPopup/VBox/CardCost
@onready var card_stats_label: Label = $CardDetailPopup/VBox/CardStats
@onready var card_keyword_label: Label = $CardDetailPopup/VBox/CardKeyword
@onready var card_desc_label: RichTextLabel = $CardDetailPopup/VBox/CardDescription


func _ready() -> void:
	if end_turn_button:
		end_turn_button.pressed.connect(_on_end_turn_pressed)
	if restart_button:
		restart_button.pressed.connect(_on_restart_pressed)
	if game_over_panel:
		game_over_panel.visible = false
	if card_detail_popup:
		card_detail_popup.visible = false

	_connect_battle_signals()


func _connect_battle_signals() -> void:
	if not BattleManager:
		return
	BattleManager.turn_started.connect(_on_turn_started)
	BattleManager.hero_damaged.connect(_on_hero_damaged)
	BattleManager.hero_healed.connect(_on_hero_healed)
	BattleManager.fatigue_taken_signal.connect(_on_fatigue_taken)
	BattleManager.card_played_signal.connect(_on_card_played)
	BattleManager.minion_summoned.connect(_on_minion_summoned)
	BattleManager.battle_ended.connect(_on_battle_ended)
	BattleManager.battle_started.connect(_on_battle_started)


func _on_battle_started() -> void:
	update_all()
	add_log("[color=yellow]Battle Start![/color]")
	add_log("[color=light_blue]카드 조작: 좌클릭으로 카드 선택 -> 보드 중앙 영역에 드롭[/color]")
	add_log("[color=light_blue]카드 사용 조건: 내 턴 + 마나 충분 + (미니언은 보드 7칸 이하)[/color]")
	add_log("[color=light_blue]공격: 내 미니언 클릭 -> 적 미니언/영웅 클릭 (도발(Taunt) 우선)[/color]")
	add_log("[color=light_blue]키: E=턴 종료, F8=키워드 QA, F9=AI QA[/color]")


func _on_turn_started(is_player_turn: bool, turn_number: int) -> void:
	update_all()
	var seat_suffix: String = ""
	if BattleManager and BattleManager.team_mode_2v2:
		seat_suffix = " [Seat %d]" % (BattleManager.active_turn_seat + 1)
	if turn_label:
		if is_player_turn:
			turn_label.text = "YOUR TURN (%d)%s" % [turn_number, seat_suffix]
		else:
			turn_label.text = "ENEMY TURN%s" % seat_suffix
	if end_turn_button:
		end_turn_button.disabled = not is_player_turn

	if is_player_turn:
		add_log("[color=cyan]--- Your Turn %d%s ---[/color]" % [turn_number, seat_suffix])
	else:
		add_log("[color=red]--- Enemy Turn%s ---[/color]" % seat_suffix)


func update_all() -> void:
	if not BattleManager or not BattleManager.player_state:
		return
	var ps: PlayerState = BattleManager.player_state
	var es: PlayerState = BattleManager.enemy_state

	if player_hp_label:
		player_hp_label.text = "HP: %d/%d" % [ps.hero_hp, PlayerState.STARTING_HP]
	if player_mana_label:
		player_mana_label.text = "Mana: %d/%d" % [ps.current_mana, ps.max_mana]
	if enemy_hp_label:
		enemy_hp_label.text = "HP: %d/%d" % [es.hero_hp, PlayerState.STARTING_HP]
	if enemy_mana_label:
		enemy_mana_label.text = "Mana: %d/%d" % [es.current_mana, es.max_mana]


func _on_hero_damaged(amount: int, is_player: bool) -> void:
	update_all()
	if is_player:
		add_log("[color=red]Your hero takes %d damage[/color]" % amount)
	else:
		add_log("[color=green]Enemy hero takes %d damage[/color]" % amount)


func _on_hero_healed(amount: int, is_player: bool) -> void:
	update_all()
	if is_player:
		add_log("[color=green]Your hero heals %d[/color]" % amount)
	else:
		add_log("[color=red]Enemy hero heals %d[/color]" % amount)


func _on_fatigue_taken(amount: int, is_player: bool) -> void:
	update_all()
	if is_player:
		add_log("[color=orange]Fatigue! Your hero takes %d[/color]" % amount)
	else:
		add_log("[color=orange]Fatigue! Enemy hero takes %d[/color]" % amount)


func _on_card_played(card: CardData, is_player: bool) -> void:
	update_all()
	var who: String = "You" if is_player else "Enemy"
	add_log("%s played [b]%s[/b] (%d mana)" % [who, card.card_name, card.mana_cost])


func _on_minion_summoned(card: CardData, is_player: bool, _board_index: int) -> void:
	var who: String = "You" if is_player else "Enemy"
	add_log("%s summoned [b]%s[/b] (%d/%d)" % [who, card.card_name, card.attack, card.health])


func _on_battle_ended(player_won: bool) -> void:
	if game_over_panel:
		game_over_panel.visible = true
	if game_over_label:
		game_over_label.text = "VICTORY!" if player_won else "DEFEAT..."
		game_over_label.modulate = Color.GOLD if player_won else Color.RED


func _on_end_turn_pressed() -> void:
	if BattleManager:
		if AudioManager and AudioManager.has_method("play_ui_click"):
			AudioManager.play_ui_click()
		BattleManager.end_player_turn()


func _on_restart_pressed() -> void:
	get_tree().reload_current_scene()


func add_log(text: String) -> void:
	if battle_log:
		battle_log.append_text(text + "\n")
		## 자동 스크롤
		await get_tree().process_frame
		if battle_log:
			battle_log.scroll_to_line(battle_log.get_line_count() - 1)


func show_card_detail(card: CardData, screen_pos: Vector2) -> void:
	if not card or not card_detail_popup:
		return

	if card_name_label:
		card_name_label.text = card.card_name
	if card_cost_label:
		card_cost_label.text = "Cost: %d" % card.mana_cost
	if card_stats_label:
		if card.card_type == CardData.CardType.MINION:
			card_stats_label.text = "ATK/HP: %d/%d" % [card.attack, card.health]
		else:
			card_stats_label.text = "Spell"
	if card_keyword_label:
		card_keyword_label.text = _keyword_text(card)
	if card_desc_label:
		card_desc_label.text = card.description if not card.description.is_empty() else "-"

	card_detail_popup.position = _clamp_popup_pos(screen_pos + Vector2(18, -14))
	card_detail_popup.visible = true


func hide_card_detail() -> void:
	if card_detail_popup:
		card_detail_popup.visible = false


func _keyword_text(card: CardData) -> String:
	match card.keyword:
		CardData.MinionKeyword.TAUNT:
			return "Keyword: Taunt"
		CardData.MinionKeyword.RUSH:
			return "Keyword: Rush"
		_:
			pass

	if card.battlecry_damage > 0:
		return "Keyword: Battlecry (Damage %d)" % card.battlecry_damage
	if card.battlecry_draw > 0:
		return "Keyword: Battlecry (Draw %d)" % card.battlecry_draw
	return "Keyword: None"


func _clamp_popup_pos(pos: Vector2) -> Vector2:
	var viewport_size: Vector2 = get_viewport().get_visible_rect().size
	var popup_size: Vector2 = card_detail_popup.size
	if popup_size.x <= 1.0 or popup_size.y <= 1.0:
		popup_size = Vector2(260.0, 170.0)
	var clamped_x: float = clampf(pos.x, 8.0, viewport_size.x - popup_size.x - 8.0)
	var clamped_y: float = clampf(pos.y, 8.0, viewport_size.y - popup_size.y - 8.0)
	return Vector2(clamped_x, clamped_y)
