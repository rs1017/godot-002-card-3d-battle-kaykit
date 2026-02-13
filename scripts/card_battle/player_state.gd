class_name PlayerState extends RefCounted
## 플레이어 상태 (HP, 마나, 덱, 손패, 필드)

signal hp_changed(new_hp: int)
signal mana_changed(current: int, max_mana: int)
signal card_drawn(card: CardData)
signal card_played(card: CardData)
signal minion_died(index: int)
signal fatigue_taken(damage: int)

const MAX_HAND_SIZE: int = 10
const MAX_BOARD_SIZE: int = 7
const MAX_MANA_CAP: int = 10
const STARTING_HP: int = 30

var hero_hp: int = STARTING_HP
var max_mana: int = 0
var current_mana: int = 0
var fatigue_counter: int = 0

var deck: Array[CardData] = []
var hand: Array[CardData] = []
var board: Array = []  ## Array of MinionState dictionaries
var graveyard: Array[CardData] = []

var is_player: bool = true  ## true=플레이어, false=AI


func reset(card_pool: Array[CardData]) -> void:
	hero_hp = STARTING_HP
	max_mana = 0
	current_mana = 0
	fatigue_counter = 0
	hand.clear()
	board.clear()
	graveyard.clear()
	deck.clear()
	for card in card_pool:
		deck.append(card)
	shuffle_deck()


func shuffle_deck() -> void:
	var rng := RandomNumberGenerator.new()
	rng.randomize()
	for i in range(deck.size() - 1, 0, -1):
		var j: int = rng.randi_range(0, i)
		var temp: CardData = deck[i]
		deck[i] = deck[j]
		deck[j] = temp


func start_turn() -> void:
	## 마나 크리스탈 +1 (최대 10)
	if max_mana < MAX_MANA_CAP:
		max_mana += 1
	current_mana = max_mana
	mana_changed.emit(current_mana, max_mana)
	## 카드 1장 드로우
	draw_card()
	## 미니언 공격 가능으로 리셋
	for minion in board:
		minion["can_attack"] = true
		minion["summoning_sickness"] = false
		minion["summoned_this_turn"] = false


func draw_card() -> CardData:
	if deck.is_empty():
		## 피로 데미지
		fatigue_counter += 1
		hero_hp -= fatigue_counter
		hp_changed.emit(hero_hp)
		fatigue_taken.emit(fatigue_counter)
		print("[PlayerState] Fatigue damage: %d (HP: %d)" % [fatigue_counter, hero_hp])
		return null

	if hand.size() >= MAX_HAND_SIZE:
		## 손패 초과 - 카드 소각
		var burned: CardData = deck.pop_back()
		graveyard.append(burned)
		print("[PlayerState] Hand full - burned: %s" % burned.card_name)
		return null

	var card: CardData = deck.pop_back()
	hand.append(card)
	card_drawn.emit(card)
	return card


func can_play_card(card: CardData) -> bool:
	if current_mana < card.mana_cost:
		return false
	if card.card_type == CardData.CardType.MINION and board.size() >= MAX_BOARD_SIZE:
		return false
	return true


func play_card(card: CardData) -> bool:
	if not can_play_card(card):
		return false
	current_mana -= card.mana_cost
	hand.erase(card)
	mana_changed.emit(current_mana, max_mana)
	card_played.emit(card)
	return true


func summon_minion(card: CardData) -> Dictionary:
	var minion: Dictionary = {
		"card": card,
		"current_attack": card.attack,
		"current_health": card.health,
		"max_health": card.health,
		"can_attack": card.keyword == CardData.MinionKeyword.RUSH,
		"summoning_sickness": card.keyword != CardData.MinionKeyword.RUSH,
		"summoned_this_turn": true,
		"is_rush": card.keyword == CardData.MinionKeyword.RUSH,
		"has_taunt": card.keyword == CardData.MinionKeyword.TAUNT,
	}
	board.append(minion)
	return minion


func take_damage(amount: int) -> void:
	hero_hp -= amount
	hero_hp = max(hero_hp, 0)
	hp_changed.emit(hero_hp)


func heal(amount: int) -> void:
	hero_hp += amount
	hero_hp = min(hero_hp, STARTING_HP)
	hp_changed.emit(hero_hp)


func is_dead() -> bool:
	return hero_hp <= 0


func has_taunt_minion() -> bool:
	for minion in board:
		if minion["has_taunt"] and minion["current_health"] > 0:
			return true
	return false


func remove_dead_minions() -> Array:
	var dead_indices: Array[int] = []
	for i in range(board.size() - 1, -1, -1):
		if board[i]["current_health"] <= 0:
			dead_indices.append(i)
			graveyard.append(board[i]["card"])
			board.remove_at(i)
	return dead_indices
