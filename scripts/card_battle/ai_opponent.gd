class_name AIOpponent extends RefCounted
## 간단한 랜덤 AI 대전 로직

var battle_manager: Node  ## BattleManager reference


func _init(bm: Node) -> void:
	battle_manager = bm


func execute_turn() -> Array[Dictionary]:
	## AI 행동 목록을 반환 (애니메이션용)
	var actions: Array[Dictionary] = []
	var state: PlayerState = battle_manager.enemy_state
	var opponent: PlayerState = battle_manager.player_state

	## 1. 카드 사용 (마나가 충분한 카드들)
	var cards_to_play: Array[CardData] = _get_playable_cards(state)
	for card in cards_to_play:
		if state.can_play_card(card):
			battle_manager._execute_play_card(state, opponent, card, false)
			actions.append({"type": "play_card", "card": card})

	## 2. 미니언 공격
	for i in range(state.board.size()):
		if i >= state.board.size():
			break
		var minion: Dictionary = state.board[i]
		if not minion["can_attack"]:
			continue

		var target: Dictionary = _choose_attack_target(state, opponent, i)
		if target.is_empty():
			continue

		battle_manager.is_player_turn = false
		var success: bool = battle_manager.try_minion_attack(i, target["index"], target["is_hero"])
		if success:
			actions.append({
				"type": "attack",
				"attacker_index": i,
				"target_index": target["index"],
				"target_is_hero": target["is_hero"]
			})

	return actions


func _get_playable_cards(state: PlayerState) -> Array[CardData]:
	var playable: Array[CardData] = []
	var remaining_mana: int = state.current_mana

	## 마나 비용 순으로 정렬 (비싼 것부터)
	var sorted_hand: Array[CardData] = state.hand.duplicate()
	sorted_hand.sort_custom(func(a: CardData, b: CardData) -> bool: return a.mana_cost > b.mana_cost)

	for card in sorted_hand:
		if card.mana_cost <= remaining_mana:
			if card.card_type == CardData.CardType.MINION and state.board.size() >= PlayerState.MAX_BOARD_SIZE:
				continue
			playable.append(card)
			remaining_mana -= card.mana_cost
	return playable


func _choose_attack_target(state: PlayerState, opponent: PlayerState, attacker_index: int) -> Dictionary:
	var attacker: Dictionary = state.board[attacker_index]
	var rush_hero_blocked: bool = attacker.get("is_rush", false) and attacker.get("summoned_this_turn", false)

	## 도발 미니언 우선
	if opponent.has_taunt_minion():
		for i in range(opponent.board.size()):
			if opponent.board[i]["has_taunt"] and opponent.board[i]["current_health"] > 0:
				return {"index": i, "is_hero": false}

	## 랜덤 대상 (미니언 or 영웅)
	if opponent.board.is_empty():
		return {} if rush_hero_blocked else {"index": -1, "is_hero": true}

	var rng := RandomNumberGenerator.new()
	rng.randomize()
	## 50% 확률로 영웅 공격, 50% 미니언 공격
	if not rush_hero_blocked and (rng.randf() < 0.5 or opponent.board.is_empty()):
		return {"index": -1, "is_hero": true}
	else:
		var target_idx: int = rng.randi_range(0, opponent.board.size() - 1)
		return {"index": target_idx, "is_hero": false}
