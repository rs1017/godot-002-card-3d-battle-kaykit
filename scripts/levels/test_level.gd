extends Node
## 테스트 레벨 스크립트


func _ready() -> void:
	# 게임 상태를 GAMEPLAY로 변경
	GameManager.change_state(GameManager.GameState.GAMEPLAY)

	# 플레이어 등록
	var player: Node = get_parent().get_node_or_null("Player")
	if player:
		player.add_to_group("player")
		GameManager.register_player(player)

	print("[TestLevel] Level loaded")
