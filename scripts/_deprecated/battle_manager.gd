extends Node
## 전투 시스템 관리 싱글톤

signal battle_started
signal battle_ended(victory: bool)
signal turn_started(character: Node)
signal turn_ended(character: Node)
signal action_executed(action: Dictionary)

enum BattleState {
	NONE,
	INITIALIZING,
	PLAYER_TURN,
	ENEMY_TURN,
	EXECUTING_ACTION,
	VICTORY,
	DEFEAT
}

var current_state: BattleState = BattleState.NONE
var turn_order: Array[Node] = []
var current_turn_index: int = 0

var player_units: Array[Node] = []
var enemy_units: Array[Node] = []


func _ready() -> void:
	print("[BattleManager] Initialized")


func start_battle(players: Array[Node], enemies: Array[Node]) -> void:
	player_units = players
	enemy_units = enemies

	current_state = BattleState.INITIALIZING
	_calculate_turn_order()

	battle_started.emit()
	print("[BattleManager] Battle started - Players: %d, Enemies: %d" % [players.size(), enemies.size()])

	_start_next_turn()


func end_battle(victory: bool) -> void:
	current_state = BattleState.VICTORY if victory else BattleState.DEFEAT

	turn_order.clear()
	player_units.clear()
	enemy_units.clear()
	current_turn_index = 0

	battle_ended.emit(victory)
	print("[BattleManager] Battle ended - Victory: %s" % victory)


func _calculate_turn_order() -> void:
	turn_order.clear()

	# 모든 유닛을 턴 순서에 추가
	for unit in player_units:
		turn_order.append(unit)
	for unit in enemy_units:
		turn_order.append(unit)

	# 속도 기반 정렬 (높은 속도 먼저)
	turn_order.sort_custom(_compare_speed)


func _compare_speed(a: Node, b: Node) -> bool:
	var speed_a: int = a.get("stats").get("speed", 0) if a.get("stats") else 0
	var speed_b: int = b.get("stats").get("speed", 0) if b.get("stats") else 0
	return speed_a > speed_b


func _start_next_turn() -> void:
	if turn_order.is_empty():
		return

	# 다음 살아있는 유닛 찾기
	var attempts: int = 0
	while attempts < turn_order.size():
		current_turn_index = (current_turn_index + 1) % turn_order.size()
		var current_unit: Node = turn_order[current_turn_index]

		if _is_unit_alive(current_unit):
			_process_turn(current_unit)
			return

		attempts += 1

	# 모든 유닛이 죽었으면 전투 종료
	_check_battle_end()


func _process_turn(unit: Node) -> void:
	if unit in player_units:
		current_state = BattleState.PLAYER_TURN
	else:
		current_state = BattleState.ENEMY_TURN

	turn_started.emit(unit)
	print("[BattleManager] Turn started: %s" % unit.name)


func execute_action(action: Dictionary) -> void:
	current_state = BattleState.EXECUTING_ACTION

	action_executed.emit(action)
	print("[BattleManager] Action executed: %s" % action)

	# 액션 실행 후 전투 종료 체크
	if not _check_battle_end():
		# 다음 턴으로
		await get_tree().create_timer(0.5).timeout
		_start_next_turn()


func end_current_turn() -> void:
	if current_turn_index >= 0 and current_turn_index < turn_order.size():
		var current_unit: Node = turn_order[current_turn_index]
		turn_ended.emit(current_unit)

	_start_next_turn()


func _is_unit_alive(unit: Node) -> bool:
	if unit.has_method("is_alive"):
		return unit.is_alive()
	return true


func _check_battle_end() -> bool:
	var players_alive: bool = false
	var enemies_alive: bool = false

	for unit in player_units:
		if _is_unit_alive(unit):
			players_alive = true
			break

	for unit in enemy_units:
		if _is_unit_alive(unit):
			enemies_alive = true
			break

	if not enemies_alive:
		end_battle(true)
		return true
	elif not players_alive:
		end_battle(false)
		return true

	return false


func get_current_unit() -> Node:
	if current_turn_index >= 0 and current_turn_index < turn_order.size():
		return turn_order[current_turn_index]
	return null


func is_player_turn() -> bool:
	return current_state == BattleState.PLAYER_TURN
