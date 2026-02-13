extends Node
## 배틀 전체 흐름 관리 (Autoload)

signal battle_started
signal turn_started(is_player_turn: bool, turn_number: int)
signal turn_ended(is_player_turn: bool)
signal turn_seat_changed(active_seat: int, is_player_side: bool, turn_number: int)
signal card_played_signal(card: CardData, is_player: bool)
signal minion_summoned(card: CardData, is_player: bool, board_index: int)
signal minion_attacked(attacker_idx: int, target_idx: int, is_attacker_player: bool, damage_to_target: int, damage_to_attacker: int)
signal minion_died_signal(board_index: int, is_player: bool)
signal hero_damaged(amount: int, is_player: bool)
signal hero_healed(amount: int, is_player: bool)
signal fatigue_taken_signal(amount: int, is_player: bool)
signal spell_cast(card: CardData, is_player: bool)
signal battle_ended(player_won: bool)
signal request_targeting(source_type: String, source_index: int)
signal targeting_cancelled

var player_state: PlayerState
var enemy_state: PlayerState
var is_player_turn: bool = true
var turn_number: int = 0
var battle_active: bool = false
var configured_player_count: int = 2
var team_mode_2v2: bool = false
var active_turn_seat: int = 0
var _turn_order_4p: Array[int] = [0, 2, 1, 3]
var _turn_order_index: int = 0
var local_player_seats: Array[int] = [0, 1]

## 타겟팅 상태
var is_targeting: bool = false
var targeting_source_type: String = ""  ## "minion_attack", "spell_damage", "spell_heal", "battlecry"
var targeting_source_index: int = -1
var targeting_card: CardData = null

## 카드 풀 (프로토타입용 10장)
var card_pool: Array[CardData] = []

const STARTING_HAND_SIZE: int = 3


func _ready() -> void:
	_apply_multiplayer_config()
	_load_card_pool()
	print("[BattleManager] Initialized")


func _apply_multiplayer_config() -> void:
	if Engine.has_singleton("MultiplayerManager"):
		# no-op: autoload 접근은 전역 심볼로 처리
		pass
	if MultiplayerManager and MultiplayerManager.has_method("get_player_count"):
		configured_player_count = clampi(MultiplayerManager.get_player_count(), 2, 4)
	team_mode_2v2 = configured_player_count >= 4


func _load_card_pool() -> void:
	var card_paths: Array[String] = [
		"res://resources/cards/card_knight.tres",
		"res://resources/cards/card_rogue.tres",
		"res://resources/cards/card_mage.tres",
		"res://resources/cards/card_barbarian.tres",
		"res://resources/cards/card_ranger.tres",
		"res://resources/cards/card_skeleton_warrior.tres",
		"res://resources/cards/card_skeleton_mage.tres",
		"res://resources/cards/card_skeleton_minion.tres",
		"res://resources/cards/card_fireball.tres",
		"res://resources/cards/card_healing_touch.tres",
	]
	for path in card_paths:
		var card: CardData = load(path) as CardData
		if card:
			card_pool.append(card)
	print("[BattleManager] Loaded %d cards" % card_pool.size())


func start_battle() -> void:
	_apply_multiplayer_config()
	player_state = PlayerState.new()
	enemy_state = PlayerState.new()

	player_state.is_player = true
	enemy_state.is_player = false

	## 양쪽 덱 초기화 (같은 카드 풀 2세트)
	var player_deck: Array[CardData] = []
	var enemy_deck: Array[CardData] = []
	for card in card_pool:
		player_deck.append(card)
		player_deck.append(card)  ## 카드 2장씩
		enemy_deck.append(card)
		enemy_deck.append(card)

	player_state.reset(player_deck)
	enemy_state.reset(enemy_deck)
	player_state.fatigue_taken.connect(_on_fatigue_taken.bind(true))
	enemy_state.fatigue_taken.connect(_on_fatigue_taken.bind(false))

	turn_number = 0
	battle_active = true
	_turn_order_index = 0
	active_turn_seat = 0 if not team_mode_2v2 else _turn_order_4p[_turn_order_index]
	is_player_turn = _is_player_side_seat(active_turn_seat)

	## 초기 손패 드로우 (시작 시 카드 드로우, 마나 증가 없이)
	for i in range(STARTING_HAND_SIZE):
		player_state.draw_card()
		enemy_state.draw_card()

	battle_started.emit()
	print("[BattleManager] Battle started! players=%d (visual board currently 1v1 view)" % configured_player_count)
	if team_mode_2v2:
		_start_active_turn()
	else:
		_start_player_turn()


func _start_player_turn() -> void:
	is_player_turn = true
	turn_number += 1
	player_state.start_turn()
	if not battle_active:
		return
	GameManager.change_state(GameManager.GameState.BATTLE_IDLE)
	turn_started.emit(true, turn_number)
	print("[BattleManager] Player turn %d (Mana: %d/%d)" % [turn_number, player_state.current_mana, player_state.max_mana])


func _start_enemy_turn() -> void:
	is_player_turn = false
	enemy_state.start_turn()
	if not battle_active:
		return
	GameManager.change_state(GameManager.GameState.BATTLE_ENEMY_TURN)
	turn_started.emit(false, turn_number)
	print("[BattleManager] Enemy turn (Mana: %d/%d)" % [enemy_state.current_mana, enemy_state.max_mana])


func end_player_turn() -> void:
	if not battle_active or not _is_player_side_seat(active_turn_seat):
		return
	cancel_targeting()
	turn_ended.emit(true)
	_advance_turn()


func end_enemy_turn() -> void:
	if not battle_active or _is_player_side_seat(active_turn_seat):
		return
	turn_ended.emit(false)
	_advance_turn()


## 카드 사용 ---------------------------------------------------------------

func try_play_card(hand_index: int) -> bool:
	if not battle_active or not is_local_control_turn():
		return false
	if hand_index < 0 or hand_index >= player_state.hand.size():
		return false

	var card: CardData = player_state.hand[hand_index]
	if not player_state.can_play_card(card):
		print("[BattleManager] Cannot play %s - not enough mana or board full" % card.card_name)
		return false

	return _execute_play_card(player_state, enemy_state, card, true)


func _execute_play_card(owner: PlayerState, opponent: PlayerState, card: CardData, is_player: bool) -> bool:
	if not owner.play_card(card):
		return false

	card_played_signal.emit(card, is_player)

	if card.card_type == CardData.CardType.MINION:
		var minion: Dictionary = owner.summon_minion(card)
		var board_index: int = owner.board.size() - 1
		minion_summoned.emit(card, is_player, board_index)

		## 전투 함성 처리
		if card.battlecry_damage > 0:
			## 타겟 선택 필요 (프로토타입: 적 영웅에게 자동)
			opponent.take_damage(card.battlecry_damage)
			hero_damaged.emit(card.battlecry_damage, not is_player)
			print("[BattleManager] %s battlecry deals %d damage" % [card.card_name, card.battlecry_damage])

		if card.battlecry_draw > 0:
			for i in range(card.battlecry_draw):
				owner.draw_card()
			print("[BattleManager] %s battlecry draws %d" % [card.card_name, card.battlecry_draw])

	elif card.card_type == CardData.CardType.SPELL:
		spell_cast.emit(card, is_player)
		if card.spell_damage > 0:
			## 대상 선택 필요 -> 프로토타입: 적 영웅
			opponent.take_damage(card.spell_damage)
			hero_damaged.emit(card.spell_damage, not is_player)
			print("[BattleManager] %s deals %d damage" % [card.card_name, card.spell_damage])
		if card.spell_heal > 0:
			owner.heal(card.spell_heal)
			hero_healed.emit(card.spell_heal, is_player)
			print("[BattleManager] %s heals %d" % [card.card_name, card.spell_heal])
		if card.spell_draw > 0:
			for i in range(card.spell_draw):
				owner.draw_card()
		owner.graveyard.append(card)

	_check_battle_end()
	return true


## 타겟팅 시스템 -----------------------------------------------------------

func start_targeting(source_type: String, source_index: int, card: CardData = null) -> void:
	is_targeting = true
	targeting_source_type = source_type
	targeting_source_index = source_index
	targeting_card = card
	GameManager.change_state(GameManager.GameState.BATTLE_TARGETING)
	request_targeting.emit(source_type, source_index)


func cancel_targeting() -> void:
	is_targeting = false
	targeting_source_type = ""
	targeting_source_index = -1
	targeting_card = null
	if battle_active and is_player_turn:
		GameManager.change_state(GameManager.GameState.BATTLE_IDLE)
	targeting_cancelled.emit()


## 미니언 공격 -------------------------------------------------------------

func try_minion_attack(attacker_index: int, target_index: int, target_is_hero: bool) -> bool:
	if not battle_active:
		return false

	var attacker_board: Array = player_state.board if is_player_turn else enemy_state.board
	var defender_state: PlayerState = enemy_state if is_player_turn else player_state

	if attacker_index < 0 or attacker_index >= attacker_board.size():
		return false

	var attacker: Dictionary = attacker_board[attacker_index]
	if not attacker["can_attack"]:
		print("[BattleManager] Minion cannot attack (summoning sickness or already attacked)")
		return false
	if target_is_hero and attacker.get("is_rush", false) and attacker.get("summoned_this_turn", false):
		print("[BattleManager] Rush minion cannot attack hero on summon turn")
		return false

	## 도발 체크
	if not target_is_hero and defender_state.has_taunt_minion():
		if target_index >= 0 and target_index < defender_state.board.size():
			if not defender_state.board[target_index]["has_taunt"]:
				print("[BattleManager] Must attack taunt minion first")
				return false
	elif target_is_hero and defender_state.has_taunt_minion():
		print("[BattleManager] Must attack taunt minion first")
		return false

	attacker["can_attack"] = false

	if target_is_hero:
		var dmg: int = attacker["current_attack"]
		defender_state.take_damage(dmg)
		hero_damaged.emit(dmg, not is_player_turn)
		minion_attacked.emit(attacker_index, -1, is_player_turn, dmg, 0)
		print("[BattleManager] Minion attacks hero for %d" % dmg)
	else:
		if target_index < 0 or target_index >= defender_state.board.size():
			return false
		var defender: Dictionary = defender_state.board[target_index]
		var dmg_to_target: int = attacker["current_attack"]
		var dmg_to_attacker: int = defender["current_attack"]
		## 상호 피해
		defender["current_health"] -= dmg_to_target
		attacker["current_health"] -= dmg_to_attacker
		minion_attacked.emit(attacker_index, target_index, is_player_turn, dmg_to_target, dmg_to_attacker)
		print("[BattleManager] Minion %d attacks minion %d (%d/%d dmg)" % [attacker_index, target_index, dmg_to_target, dmg_to_attacker])

	## 사망 처리
	_process_deaths()
	_check_battle_end()
	return true


func _process_deaths() -> void:
	var player_dead: Array = player_state.remove_dead_minions()
	for idx in player_dead:
		minion_died_signal.emit(idx, true)
	var enemy_dead: Array = enemy_state.remove_dead_minions()
	for idx in enemy_dead:
		minion_died_signal.emit(idx, false)


func _check_battle_end() -> void:
	if not player_state or not enemy_state:
		return
	if player_state.is_dead():
		battle_active = false
		GameManager.change_state(GameManager.GameState.GAME_OVER)
		battle_ended.emit(false)
		print("[BattleManager] GAME OVER - Player loses!")
	elif enemy_state.is_dead():
		battle_active = false
		GameManager.change_state(GameManager.GameState.GAME_OVER)
		battle_ended.emit(true)
		print("[BattleManager] VICTORY - Player wins!")


## 주문 대상 적용 ----------------------------------------------------------

func apply_spell_to_target(card: CardData, target_is_player: bool, target_minion_index: int) -> void:
	var target_state: PlayerState = player_state if target_is_player else enemy_state

	if card.spell_damage > 0:
		if target_minion_index >= 0 and target_minion_index < target_state.board.size():
			target_state.board[target_minion_index]["current_health"] -= card.spell_damage
			_process_deaths()
		else:
			target_state.take_damage(card.spell_damage)
			hero_damaged.emit(card.spell_damage, target_is_player)

	if card.spell_heal > 0:
		if target_minion_index >= 0 and target_minion_index < target_state.board.size():
			var minion: Dictionary = target_state.board[target_minion_index]
			minion["current_health"] = min(minion["current_health"] + card.spell_heal, minion["max_health"])
		else:
			target_state.heal(card.spell_heal)
			hero_healed.emit(card.spell_heal, target_is_player)

	_check_battle_end()


func is_local_control_turn() -> bool:
	if not team_mode_2v2:
		return is_player_turn
	return local_player_seats.has(active_turn_seat)


func is_current_turn_player_side() -> bool:
	return _is_player_side_seat(active_turn_seat)


func _advance_turn() -> void:
	if not team_mode_2v2:
		if is_player_turn:
			_start_enemy_turn()
		else:
			_start_player_turn()
		return

	_turn_order_index = (_turn_order_index + 1) % _turn_order_4p.size()
	active_turn_seat = _turn_order_4p[_turn_order_index]
	_start_active_turn()


func _start_active_turn() -> void:
	var is_player_side: bool = _is_player_side_seat(active_turn_seat)
	is_player_turn = is_player_side
	turn_number += 1

	var state: PlayerState = player_state if is_player_side else enemy_state
	var primary_seat: bool = active_turn_seat == 0 or active_turn_seat == 2
	if state and primary_seat:
		state.start_turn()
		if not battle_active:
			return

	GameManager.change_state(GameManager.GameState.BATTLE_IDLE if is_player_side else GameManager.GameState.BATTLE_ENEMY_TURN)
	turn_started.emit(is_player_side, turn_number)
	turn_seat_changed.emit(active_turn_seat, is_player_side, turn_number)
	print("[BattleManager] Seat %d turn %d (%s side, primary=%s)" % [active_turn_seat, turn_number, "player" if is_player_side else "enemy", str(primary_seat)])


func _is_player_side_seat(seat: int) -> bool:
	return seat == 0 or seat == 1


func _on_fatigue_taken(amount: int, is_player: bool) -> void:
	hero_damaged.emit(amount, is_player)
	fatigue_taken_signal.emit(amount, is_player)
	print("[BattleManager] Fatigue damage %d (%s)" % [amount, "player" if is_player else "enemy"])
	_check_battle_end()


## 디버그 QA ---------------------------------------------------------------

func run_debug_keyword_checks() -> Dictionary:
	var prev_player: PlayerState = player_state
	var prev_enemy: PlayerState = enemy_state
	var prev_turn: bool = is_player_turn
	var prev_active: bool = battle_active
	var prev_turn_num: int = turn_number

	var report: Dictionary = {
		"taunt_block_non_taunt": false,
		"taunt_block_hero": false,
		"taunt_allow_taunt_target": false,
		"rush_can_attack_on_summon": false,
		"rush_hero_block_on_summon": false,
		"battlecry_damage_applied": false,
		"battlecry_draw_applied": false,
		"pass": false,
	}

	player_state = PlayerState.new()
	enemy_state = PlayerState.new()
	player_state.reset([])
	enemy_state.reset([])
	is_player_turn = true
	battle_active = true
	turn_number = 1

	var taunt_card: CardData = _find_card_by_name("Knight")
	var rush_card: CardData = _find_card_by_name("Rogue")
	var vanilla_card: CardData = _find_card_by_name("Barbarian")
	var battlecry_damage_card: CardData = _find_card_by_name("Mage")
	var battlecry_draw_card: CardData = _find_card_by_name("Skeleton Mage")

	if taunt_card and rush_card and vanilla_card and battlecry_damage_card and battlecry_draw_card:
		var atk: Dictionary = player_state.summon_minion(rush_card)
		atk["can_attack"] = true
		enemy_state.summon_minion(taunt_card)
		enemy_state.summon_minion(vanilla_card)

		report["taunt_block_non_taunt"] = not try_minion_attack(0, 1, false)
		report["taunt_block_hero"] = not try_minion_attack(0, -1, true)
		report["taunt_allow_taunt_target"] = try_minion_attack(0, 0, false)

		var rush_minion: Dictionary = player_state.summon_minion(rush_card)
		report["rush_can_attack_on_summon"] = rush_minion["can_attack"] and not rush_minion["summoning_sickness"]
		report["rush_hero_block_on_summon"] = not try_minion_attack(1, -1, true)

		player_state.hand = [battlecry_damage_card, battlecry_draw_card]
		player_state.current_mana = 10
		player_state.max_mana = 10
		var hp_before: int = enemy_state.hero_hp
		var hand_before: int = player_state.hand.size()
		_execute_play_card(player_state, enemy_state, battlecry_damage_card, true)
		var after_damage: int = enemy_state.hero_hp
		_execute_play_card(player_state, enemy_state, battlecry_draw_card, true)
		var hand_after: int = player_state.hand.size()

		report["battlecry_damage_applied"] = after_damage < hp_before
		report["battlecry_draw_applied"] = hand_after >= hand_before - 1

	var ok: bool = true
	for key in report.keys():
		if key == "pass":
			continue
		if not report[key]:
			ok = false
			break
	report["pass"] = ok

	player_state = prev_player
	enemy_state = prev_enemy
	is_player_turn = prev_turn
	battle_active = prev_active
	turn_number = prev_turn_num

	return report


func _find_card_by_name(name: String) -> CardData:
	for card in card_pool:
		if card and card.card_name == name:
			return card
	return null


func run_debug_ai_turn_check() -> Dictionary:
	var prev_player: PlayerState = player_state
	var prev_enemy: PlayerState = enemy_state
	var prev_turn: bool = is_player_turn
	var prev_active: bool = battle_active
	var prev_turn_num: int = turn_number

	var report: Dictionary = {
		"ai_played_card": false,
		"ai_attacked": false,
		"taunt_respected": false,
		"pass": false,
	}

	player_state = PlayerState.new()
	enemy_state = PlayerState.new()
	player_state.reset([])
	enemy_state.reset([])
	is_player_turn = false
	battle_active = true
	turn_number = 1

	var ai: AIOpponent = AIOpponent.new(self)
	var taunt_card: CardData = _find_card_by_name("Knight")
	var rush_card: CardData = _find_card_by_name("Rogue")
	var cheap_card: CardData = _find_card_by_name("Skeleton Minion")

	if taunt_card and rush_card and cheap_card:
		player_state.summon_minion(taunt_card)
		var enemy_attacker: Dictionary = enemy_state.summon_minion(rush_card)
		enemy_attacker["can_attack"] = true
		enemy_state.hand = [cheap_card]
		enemy_state.current_mana = max(cheap_card.mana_cost, 1)
		enemy_state.max_mana = enemy_state.current_mana

		var actions: Array[Dictionary] = ai.execute_turn()
		for action in actions:
			var action_type: String = action.get("type", "")
			if action_type == "play_card":
				report["ai_played_card"] = true
			if action_type == "attack":
				report["ai_attacked"] = true
				report["taunt_respected"] = (not action.get("target_is_hero", true)) and action.get("target_index", -1) == 0

	var ok: bool = report["ai_played_card"] and report["ai_attacked"] and report["taunt_respected"]
	report["pass"] = ok

	player_state = prev_player
	enemy_state = prev_enemy
	is_player_turn = prev_turn
	battle_active = prev_active
	turn_number = prev_turn_num

	return report
