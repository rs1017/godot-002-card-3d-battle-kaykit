extends Node
## 2~4인 멀티플레이 세션 설정 관리자 (기반 구조)

signal session_config_changed(player_count: int)

const MIN_PLAYERS: int = 2
const MAX_PLAYERS: int = 4

var player_count: int = 2
var room_code: String = ""
var seat_player_ids: Array[int] = []


func _ready() -> void:
	seat_player_ids.resize(MAX_PLAYERS)
	for i in range(seat_player_ids.size()):
		seat_player_ids[i] = -1


func set_player_count(count: int) -> void:
	player_count = clampi(count, MIN_PLAYERS, MAX_PLAYERS)
	session_config_changed.emit(player_count)


func get_player_count() -> int:
	return player_count


func assign_player_to_seat(seat_index: int, peer_id: int) -> bool:
	if seat_index < 0 or seat_index >= MAX_PLAYERS:
		return false
	seat_player_ids[seat_index] = peer_id
	return true


func clear_seat(seat_index: int) -> void:
	if seat_index < 0 or seat_index >= MAX_PLAYERS:
		return
	seat_player_ids[seat_index] = -1


func active_player_ids() -> Array[int]:
	var result: Array[int] = []
	for id in seat_player_ids:
		if id >= 0:
			result.append(id)
	return result
