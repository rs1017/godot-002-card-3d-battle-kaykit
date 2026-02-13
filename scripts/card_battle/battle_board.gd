extends Node3D
## 배틀 보드 메인 컨트롤러
## 카드를 내면 중앙 아레나에 3D 캐릭터가 등장하여 싸우는 구조

const CARD_3D_SCENE: String = "res://scenes/battle/card_3d.tscn"
const MINION_SCENE: String = "res://scenes/battle/minion_on_board.tscn"
const CombatCameraScript: GDScript = preload("res://scripts/card_battle/combat_camera.gd")
const CombatSequenceScript: GDScript = preload("res://scripts/card_battle/combat_sequence.gd")

## 영웅 KayKit 모델 경로
const PLAYER_HERO_MODEL_PATH: String = "res://assets/kaykit/adventurers/addons/kaykit_character_pack_adventures/Characters/gltf/Knight.glb"
const ENEMY_HERO_MODEL_PATH: String = "res://assets/kaykit/skeletons/addons/kaykit_character_pack_skeletons/Characters/gltf/Skeleton_Warrior.glb"
const HERO_MODEL_SCALE: Vector3 = Vector3(0.35, 0.35, 0.35)

## 보드 레이아웃 상수
const CARD_SPACING: float = 1.0
const CARD_SCALE: Vector3 = Vector3(1.35, 1.35, 1.35)
const BOARD_SLOT_SPACING: float = 1.2

## 영웅 위치 (사이드에 배치)
const PLAYER_HERO_POS: Vector3 = Vector3(4.0, 0.3, 3.5)
const ENEMY_HERO_POS: Vector3 = Vector3(-4.0, 0.3, -3.5)

## 카메라 위치 (플레이어 뒤쪽 위에서 적 쪽을 향해)
const CAMERA_POS: Vector3 = Vector3(0.0, 12.0, 9.0)
const CAMERA_LOOK_AT: Vector3 = Vector3(0.0, 0.0, -1.0)

## 전투 중앙 위치
const COMBAT_CENTER: Vector3 = Vector3(0.0, 0.0, 0.0)
const PLAYER_COMBAT_Z: float = 1.2
const ENEMY_COMBAT_Z: float = -1.2

## 보드 영역 (드롭 판단)
const PLAYER_BOARD_Z: float = 2.5
const ENEMY_BOARD_Z: float = -2.5

@onready var player_hand_node: Node3D = $PlayerSide/HandArea
@onready var player_board_node: Node3D = $PlayerSide/BoardSlots
@onready var enemy_hand_node: Node3D = $EnemySide/HandArea
@onready var enemy_board_node: Node3D = $EnemySide/BoardSlots
@onready var player_hero_area: Area3D = $PlayerSide/HeroPortrait
@onready var enemy_hero_area: Area3D = $EnemySide/HeroPortrait
@onready var player_hero_model_container: Node3D = $PlayerSide/HeroPortrait/HeroModel
@onready var enemy_hero_model_container: Node3D = $EnemySide/HeroPortrait/HeroModel
@onready var camera: Camera3D = $Camera3D
@onready var battle_hud: CanvasLayer = $BattleHUD

var hand_cards: Array[Card3D] = []
var player_minions: Array[MinionOnBoard] = []
var enemy_minions: Array[MinionOnBoard] = []

var selected_minion: MinionOnBoard = null
var ai_opponent: AIOpponent = null

## 드래그 상태
var dragging_card: Card3D = null
var drag_plane: Plane = Plane(Vector3.UP, 0.5)

## 전투 시스템
var combat_camera: Node  ## CombatCamera
var combat_sequence: RefCounted  ## CombatSequence
var _is_animating: bool = false
var _ai_turn_running: bool = false
var _ai_turn_token: int = 0


func _ready() -> void:
	_setup_camera()
	_setup_combat_systems()
	_setup_hero_models()
	_connect_signals()
	_setup_hero_areas()

	## AI 생성
	ai_opponent = AIOpponent.new(BattleManager)

	## 배틀 시작
	await get_tree().process_frame
	BattleManager.start_battle()
	_refresh_hand()


func _setup_camera() -> void:
	## 45도 대각선에서 바라보는 카메라
	if camera:
		camera.global_position = CAMERA_POS
		camera.look_at(CAMERA_LOOK_AT, Vector3.UP)


func _setup_combat_systems() -> void:
	combat_camera = CombatCameraScript.new()
	add_child(combat_camera)
	if camera:
		## 카메라 setup은 look_at 이후에
		await get_tree().process_frame
		combat_camera.setup(camera)

	combat_sequence = CombatSequenceScript.new()
	combat_sequence.setup(self, combat_camera)


func _setup_hero_models() -> void:
	_load_hero_model(PLAYER_HERO_MODEL_PATH, player_hero_model_container, false)
	_load_hero_model(ENEMY_HERO_MODEL_PATH, enemy_hero_model_container, true)


func _load_hero_model(model_path: String, container: Node3D, face_player: bool) -> void:
	if not container:
		return
	if not ResourceLoader.exists(model_path):
		return

	var model_scene: PackedScene = load(model_path) as PackedScene
	if not model_scene:
		return

	var model: Node3D = model_scene.instantiate()
	model.scale = HERO_MODEL_SCALE
	if face_player:
		model.rotation_degrees.y = 180.0
	container.add_child(model)

	var anim_player: AnimationPlayer = _find_animation_player(model)
	if anim_player and anim_player.has_animation("Idle"):
		anim_player.play("Idle")


func _find_animation_player(node: Node) -> AnimationPlayer:
	if node is AnimationPlayer:
		return node as AnimationPlayer
	for child in node.get_children():
		var result: AnimationPlayer = _find_animation_player(child)
		if result:
			return result
	return null


func _connect_signals() -> void:
	BattleManager.battle_started.connect(_on_battle_started)
	BattleManager.turn_started.connect(_on_turn_started)
	if BattleManager.has_signal("turn_seat_changed"):
		BattleManager.turn_seat_changed.connect(_on_turn_seat_changed)
	BattleManager.minion_summoned.connect(_on_minion_summoned)
	BattleManager.minion_died_signal.connect(_on_minion_died)
	BattleManager.minion_attacked.connect(_on_minion_attacked)
	BattleManager.spell_cast.connect(_on_spell_cast)
	BattleManager.turn_ended.connect(_on_turn_ended)
	BattleManager.battle_ended.connect(_on_battle_ended)


func _setup_hero_areas() -> void:
	if enemy_hero_area:
		enemy_hero_area.input_event.connect(_on_enemy_hero_input)
	if player_hero_area:
		player_hero_area.input_event.connect(_on_player_hero_input)


func _process(_delta: float) -> void:
	if dragging_card and camera:
		var mouse_pos: Vector2 = get_viewport().get_mouse_position()
		var from: Vector3 = camera.project_ray_origin(mouse_pos)
		var dir: Vector3 = camera.project_ray_normal(mouse_pos)
		var intersection: Variant = drag_plane.intersects_ray(from, dir)
		if intersection:
			dragging_card.global_position = intersection as Vector3


func _unhandled_input(event: InputEvent) -> void:
	if _is_animating:
		return
	if event is InputEventKey:
		var key_event: InputEventKey = event as InputEventKey
		if key_event.pressed and not key_event.echo and key_event.keycode == KEY_F8:
			_run_debug_keyword_checks()
		if key_event.pressed and not key_event.echo and key_event.keycode == KEY_F9:
			_run_debug_ai_checks()
	if event is InputEventMouseButton:
		var mb: InputEventMouseButton = event as InputEventMouseButton
		if mb.button_index == MOUSE_BUTTON_LEFT and not mb.pressed:
			if dragging_card:
				_handle_card_drop()
		if mb.button_index == MOUSE_BUTTON_RIGHT and mb.pressed:
			_cancel_action()
	if event.is_action_pressed("end_turn"):
		if BattleManager.battle_active and BattleManager.is_local_control_turn():
			BattleManager.end_player_turn()


func _run_debug_keyword_checks() -> void:
	if not BattleManager or not BattleManager.has_method("run_debug_keyword_checks"):
		return
	var result: Dictionary = BattleManager.run_debug_keyword_checks()
	var status: String = "PASS" if result.get("pass", false) else "FAIL"
	var color: String = "green" if result.get("pass", false) else "red"
	var msg: String = "[color=%s][QA] Keyword checks: %s[/color]" % [color, status]
	if battle_hud and battle_hud.has_method("add_log"):
		battle_hud.add_log(msg)
		battle_hud.add_log("Taunt(non-taunt block): %s | Taunt(hero block): %s | Rush: %s" % [
			str(result.get("taunt_block_non_taunt", false)),
			str(result.get("taunt_block_hero", false)),
			str(result.get("rush_can_attack_on_summon", false)),
		])
		battle_hud.add_log("Rush(hero block on summon): %s" % str(result.get("rush_hero_block_on_summon", false)))
		battle_hud.add_log("Battlecry(damage): %s | Battlecry(draw): %s" % [
			str(result.get("battlecry_damage_applied", false)),
			str(result.get("battlecry_draw_applied", false)),
		])
	print("[BattleBoard][QA] %s %s" % [status, result])


func _run_debug_ai_checks() -> void:
	if not BattleManager or not BattleManager.has_method("run_debug_ai_turn_check"):
		return
	var result: Dictionary = BattleManager.run_debug_ai_turn_check()
	var status: String = "PASS" if result.get("pass", false) else "FAIL"
	var color: String = "green" if result.get("pass", false) else "red"
	var msg: String = "[color=%s][QA] AI turn check: %s[/color]" % [color, status]
	if battle_hud and battle_hud.has_method("add_log"):
		battle_hud.add_log(msg)
		battle_hud.add_log("AI played: %s | AI attacked: %s | Taunt respected: %s" % [
			str(result.get("ai_played_card", false)),
			str(result.get("ai_attacked", false)),
			str(result.get("taunt_respected", false)),
		])
	print("[BattleBoard][QA] %s %s" % [status, result])


## 손패 관리 ---------------------------------------------------------------

func _refresh_hand() -> void:
	for card in hand_cards:
		if is_instance_valid(card):
			card.queue_free()
	hand_cards.clear()

	if not BattleManager.player_state:
		return

	var hand: Array[CardData] = BattleManager.player_state.hand
	var card_scene: PackedScene = load(CARD_3D_SCENE) as PackedScene
	if not card_scene:
		return

	var count: int = hand.size()
	var start_x: float = -(count - 1) * CARD_SPACING / 2.0

	for i in range(count):
		var card_node: Card3D = card_scene.instantiate() as Card3D
		player_hand_node.add_child(card_node)
		card_node.setup(hand[i], i)

		var pos := Vector3(start_x + i * CARD_SPACING, 0.0, 0.0)
		card_node.position = pos
		card_node.scale = CARD_SCALE
		## 카메라 쪽으로 기울여 가독성 향상
		card_node.rotation_degrees.x = -30.0
		card_node.save_position()
		card_node.set_playable(BattleManager.player_state.can_play_card(hand[i]))
		card_node.card_clicked.connect(_on_card_clicked)
		card_node.card_hovered.connect(_on_card_hovered)
		card_node.card_unhovered.connect(_on_card_unhovered)
		hand_cards.append(card_node)


func _refresh_enemy_hand_backs() -> void:
	for child in enemy_hand_node.get_children():
		child.queue_free()

	if not BattleManager.enemy_state:
		return

	var count: int = BattleManager.enemy_state.hand.size()
	var start_x: float = -(count - 1) * CARD_SPACING / 2.0

	for i in range(count):
		var back := MeshInstance3D.new()
		var box := BoxMesh.new()
		box.size = Vector3(0.68, 0.03, 0.95)
		back.mesh = box
		var mat := StandardMaterial3D.new()
		mat.albedo_color = Color(0.25, 0.15, 0.4)
		back.set_surface_override_material(0, mat)
		enemy_hand_node.add_child(back)
		back.position = Vector3(start_x + i * CARD_SPACING, 0.0, 0.0)
		## 카메라 쪽으로 기울여서 뒷면 보이게
		back.rotation_degrees.x = 30.0


## 보드 미니언 관리 ---------------------------------------------------------

func _spawn_minion_on_board(card: CardData, is_player: bool, board_index: int) -> void:
	var minion_scene: PackedScene = load(MINION_SCENE) as PackedScene
	if not minion_scene:
		return

	var state: PlayerState = BattleManager.player_state if is_player else BattleManager.enemy_state
	if board_index >= state.board.size():
		return

	var minion_data: Dictionary = state.board[board_index]
	var minion_node: MinionOnBoard = minion_scene.instantiate() as MinionOnBoard

	var parent: Node3D = player_board_node if is_player else enemy_board_node
	parent.add_child(minion_node)

	## 소환 애니메이션 없이 셋업 (중앙 스폰 연출에서 처리)
	minion_node.setup_no_summon(card, minion_data, board_index, is_player)

	minion_node.minion_clicked.connect(_on_minion_clicked)

	if is_player:
		player_minions.append(minion_node)
	else:
		enemy_minions.append(minion_node)

	## 소환 이펙트
	combat_sequence.play_summon(minion_node)

	## 보드 슬롯 위치 계산
	_reposition_board_minions(is_player)
	var minion_list: Array = player_minions if is_player else enemy_minions
	var count: int = minion_list.size()
	var start_x: float = -(count - 1) * BOARD_SLOT_SPACING / 2.0
	var slot_idx: int = count - 1
	var target_slot_pos: Vector3 = parent.global_position + Vector3(start_x + slot_idx * BOARD_SLOT_SPACING, 0.0, 0.0)

	## 중앙에서 등장 후 보드 슬롯으로 걸어감
	var center: Vector3 = COMBAT_CENTER + Vector3(0.0, 0.0, PLAYER_COMBAT_Z if is_player else ENEMY_COMBAT_Z)
	await minion_node.spawn_at_center_then_walk(center, target_slot_pos)


func _reposition_board_minions(is_player: bool) -> void:
	var minion_nodes: Array = player_minions if is_player else enemy_minions
	var count: int = minion_nodes.size()
	var start_x: float = -(count - 1) * BOARD_SLOT_SPACING / 2.0

	for i in range(count):
		if is_instance_valid(minion_nodes[i]):
			var target_pos := Vector3(start_x + i * BOARD_SLOT_SPACING, 0.0, 0.0)
			var tween: Tween = minion_nodes[i].create_tween()
			tween.tween_property(minion_nodes[i], "position", target_pos, 0.2)
			## idle 배회 기준점 업데이트
			if minion_nodes[i].has_method("set_home_position"):
				minion_nodes[i].set_home_position(target_pos)


func _sync_minion_stats() -> void:
	for i in range(player_minions.size()):
		if i < BattleManager.player_state.board.size() and is_instance_valid(player_minions[i]):
			player_minions[i].sync_from_data(BattleManager.player_state.board[i])
			player_minions[i].board_index = i

	for i in range(enemy_minions.size()):
		if i < BattleManager.enemy_state.board.size() and is_instance_valid(enemy_minions[i]):
			enemy_minions[i].sync_from_data(BattleManager.enemy_state.board[i])
			enemy_minions[i].board_index = i


## 카드 인터랙션 -----------------------------------------------------------

func _on_card_clicked(card_node: Card3D) -> void:
	if not BattleManager.battle_active or not BattleManager.is_local_control_turn():
		return
	if GameManager.current_state != GameManager.GameState.BATTLE_IDLE:
		return
	if not card_node.is_playable:
		return

	if AudioManager and AudioManager.has_method("play_card_pickup"):
		AudioManager.play_card_pickup()
	dragging_card = card_node
	dragging_card.is_dragging = true
	GameManager.change_state(GameManager.GameState.BATTLE_DRAGGING)


func _handle_card_drop() -> void:
	if not dragging_card:
		return

	var drop_z: float = dragging_card.global_position.z
	var card: Card3D = dragging_card
	dragging_card = null

	## 보드 영역에 드롭시 카드 사용 (플레이어 보드 ~ 적 보드 사이)
	if drop_z < PLAYER_BOARD_Z + 1.5 and drop_z > ENEMY_BOARD_Z - 1.0:
		var hand_idx: int = card.hand_index
		card.is_dragging = false
		if battle_hud and battle_hud.has_method("hide_card_detail"):
			battle_hud.hide_card_detail()
		## 카드가 중앙으로 날아가는 연출
		await card.play_to_center(COMBAT_CENTER)
		var success: bool = BattleManager.try_play_card(hand_idx)
		if success:
			if AudioManager and AudioManager.has_method("play_card_play"):
				AudioManager.play_card_play()
			_refresh_hand()
			_refresh_enemy_hand_backs()
			return
		## 실패 시에도 카드는 이미 소멸됨 → 손패 갱신
		_refresh_hand()
		GameManager.change_state(GameManager.GameState.BATTLE_IDLE)
		return

	card.is_dragging = false
	card.return_to_hand()
	GameManager.change_state(GameManager.GameState.BATTLE_IDLE)


func _on_card_hovered(card_node: Card3D) -> void:
	if not card_node or not card_node.card_data:
		return
	if battle_hud and battle_hud.has_method("show_card_detail"):
		battle_hud.show_card_detail(card_node.card_data, get_viewport().get_mouse_position())
	if AudioManager and AudioManager.has_method("play_ui_hover"):
		AudioManager.play_ui_hover()


func _on_card_unhovered(_card_node: Card3D) -> void:
	if battle_hud and battle_hud.has_method("hide_card_detail"):
		battle_hud.hide_card_detail()


func _on_minion_clicked(minion: MinionOnBoard) -> void:
	if not BattleManager.battle_active or _is_animating:
		return

	if BattleManager.is_local_control_turn():
		if GameManager.current_state == GameManager.GameState.BATTLE_IDLE:
			if minion.is_player_side and minion.can_attack:
				selected_minion = minion
				GameManager.change_state(GameManager.GameState.BATTLE_TARGETING)
				_highlight_valid_targets()
		elif GameManager.current_state == GameManager.GameState.BATTLE_TARGETING:
			if selected_minion and not minion.is_player_side:
				var attacker_idx: int = selected_minion.board_index
				var target_idx: int = minion.board_index
				_clear_highlights()
				BattleManager.try_minion_attack(attacker_idx, target_idx, false)
				selected_minion = null
				_refresh_hand()


func _on_enemy_hero_input(_camera_node: Node, event: InputEvent, _position: Vector3, _normal: Vector3, _shape_idx: int) -> void:
	if event is InputEventMouseButton:
		var mb: InputEventMouseButton = event as InputEventMouseButton
		if mb.button_index == MOUSE_BUTTON_LEFT and mb.pressed:
			if GameManager.current_state == GameManager.GameState.BATTLE_TARGETING and selected_minion:
				_clear_highlights()
				BattleManager.try_minion_attack(selected_minion.board_index, -1, true)
				selected_minion = null


func _on_player_hero_input(_camera_node: Node, _event: InputEvent, _position: Vector3, _normal: Vector3, _shape_idx: int) -> void:
	pass


func _cancel_action() -> void:
	if dragging_card:
		dragging_card.is_dragging = false
		dragging_card.return_to_hand()
		dragging_card = null
	if selected_minion:
		selected_minion = null
		_clear_highlights()
	BattleManager.cancel_targeting()
	GameManager.change_state(GameManager.GameState.BATTLE_IDLE)


func _highlight_valid_targets() -> void:
	var enemy: PlayerState = BattleManager.enemy_state
	if enemy.has_taunt_minion():
		for minion in enemy_minions:
			if is_instance_valid(minion) and minion.has_taunt:
				minion.set_attackable(true)
	else:
		for minion in enemy_minions:
			if is_instance_valid(minion):
				minion.set_attackable(true)


func _clear_highlights() -> void:
	for minion in enemy_minions:
		if is_instance_valid(minion):
			minion.set_attackable(false)
	for minion in player_minions:
		if is_instance_valid(minion):
			minion.set_attackable(false)


## 시그널 핸들러 -----------------------------------------------------------

func _on_battle_started() -> void:
	_refresh_hand()
	_refresh_enemy_hand_backs()


func _on_turn_started(is_player_turn: bool, _turn_number: int) -> void:
	if is_player_turn:
		_ai_turn_running = false
		_ai_turn_token += 1
		_refresh_hand()
		_refresh_enemy_hand_backs()
		_sync_minion_stats()
	else:
		if _ai_turn_running:
			return
		_ai_turn_running = true
		_ai_turn_token += 1
		_execute_ai_turn(_ai_turn_token)


func _on_turn_seat_changed(active_seat: int, is_player_side: bool, turn_no: int) -> void:
	if battle_hud and battle_hud.has_method("add_log"):
		var side_text: String = "PLAYER" if is_player_side else "ENEMY"
		battle_hud.add_log("[color=orange]Turn %d: Seat %d (%s)[/color]" % [turn_no, active_seat + 1, side_text])


func _on_turn_ended(_is_player_turn: bool) -> void:
	_sync_minion_stats()


func _on_minion_summoned(card: CardData, is_player: bool, board_index: int) -> void:
	if AudioManager and AudioManager.has_method("play_summon"):
		AudioManager.play_summon()
	_spawn_minion_on_board(card, is_player, board_index)


func _on_minion_died(board_index: int, is_player: bool) -> void:
	var minion_list: Array = player_minions if is_player else enemy_minions
	if board_index < minion_list.size():
		var minion: MinionOnBoard = minion_list[board_index]
		if is_instance_valid(minion):
			minion_list.remove_at(board_index)
			if AudioManager and AudioManager.has_method("play_death"):
				AudioManager.play_death()
			minion.play_death_animation()
			await minion.death_animation_finished
			if is_instance_valid(minion):
				minion.queue_free()
			_reposition_board_minions(is_player)


func _on_minion_attacked(attacker_idx: int, target_idx: int, is_attacker_player: bool, damage_to_target: int, damage_to_attacker: int) -> void:
	var attacker_list: Array = player_minions if is_attacker_player else enemy_minions
	var target_list: Array = enemy_minions if is_attacker_player else player_minions

	if attacker_idx >= attacker_list.size() or not is_instance_valid(attacker_list[attacker_idx]):
		_sync_minion_stats()
		return

	var attacker: MinionOnBoard = attacker_list[attacker_idx]
	_is_animating = true
	if AudioManager and AudioManager.has_method("play_attack"):
		AudioManager.play_attack()

	if target_idx >= 0 and target_idx < target_list.size() and is_instance_valid(target_list[target_idx]):
		var target: MinionOnBoard = target_list[target_idx]
		await combat_sequence.play_minion_attack(attacker, target, damage_to_target, damage_to_attacker)
	else:
		var target_pos: Vector3 = ENEMY_HERO_POS if is_attacker_player else PLAYER_HERO_POS
		await combat_sequence.play_hero_attack(attacker, target_pos, damage_to_target)

	_is_animating = false
	_sync_minion_stats()
	_refresh_hand()

	if not BattleManager.is_player_turn:
		GameManager.change_state(GameManager.GameState.BATTLE_ENEMY_TURN)
	else:
		GameManager.change_state(GameManager.GameState.BATTLE_IDLE)


func _on_spell_cast(card: CardData, is_player: bool) -> void:
	_is_animating = true
	if AudioManager and AudioManager.has_method("play_spell"):
		AudioManager.play_spell()

	var caster_pos: Vector3 = PLAYER_HERO_POS if is_player else ENEMY_HERO_POS
	var target_pos: Vector3 = ENEMY_HERO_POS if is_player else PLAYER_HERO_POS

	if card.spell_damage > 0:
		await combat_sequence.play_spell_fireball(caster_pos, target_pos, card.spell_damage)
	elif card.spell_heal > 0:
		var heal_pos: Vector3 = PLAYER_HERO_POS if is_player else ENEMY_HERO_POS
		await combat_sequence.play_spell_heal(heal_pos, card.spell_heal)

	_is_animating = false


func _on_battle_ended(_player_won: bool) -> void:
	_clear_highlights()
	_is_animating = false
	_ai_turn_running = false
	_ai_turn_token += 1


## 적 카드 플레이 연출 -----------------------------------------------------

func _animate_enemy_card_play() -> void:
	## 적 손패 위치에서 뒷면 카드 생성 → 중앙으로 날아가며 확대 → 소멸
	var card_back := MeshInstance3D.new()
	var box := BoxMesh.new()
	box.size = Vector3(0.5, 0.02, 0.7)
	card_back.mesh = box
	var mat := StandardMaterial3D.new()
	mat.albedo_color = Color(0.25, 0.15, 0.4)
	card_back.set_surface_override_material(0, mat)
	add_child(card_back)

	## 적 손패 위치에서 시작
	card_back.global_position = enemy_hand_node.global_position + Vector3(0.0, 0.3, 0.0)
	card_back.rotation_degrees.x = 30.0

	## 중앙 상공으로 날아감
	var fly_target: Vector3 = COMBAT_CENTER + Vector3(0.0, 1.5, 0.0)
	var tween: Tween = card_back.create_tween()
	tween.set_parallel(true)
	tween.set_ease(Tween.EASE_OUT)
	tween.set_trans(Tween.TRANS_CUBIC)
	tween.tween_property(card_back, "global_position", fly_target, 0.4)
	tween.tween_property(card_back, "scale", Vector3.ONE * 1.5, 0.4)
	tween.tween_property(card_back, "rotation_degrees:x", 0.0, 0.4)
	await tween.finished

	## 소멸
	mat.emission_enabled = true
	mat.emission = Color(0.8, 0.2, 0.2)
	mat.emission_energy_multiplier = 2.0

	var vanish: Tween = card_back.create_tween()
	vanish.set_ease(Tween.EASE_IN)
	vanish.tween_property(card_back, "scale", Vector3.ZERO, 0.2)
	await vanish.finished

	card_back.queue_free()


## AI 턴 실행 --------------------------------------------------------------

func _execute_ai_turn(turn_token: int) -> void:
	await get_tree().create_timer(1.0).timeout

	if not BattleManager.battle_active or turn_token != _ai_turn_token:
		_ai_turn_running = false
		return
	if not ai_opponent:
		ai_opponent = AIOpponent.new(BattleManager)

	var actions: Array[Dictionary] = ai_opponent.execute_turn()

	for action in actions:
		if not BattleManager.battle_active or turn_token != _ai_turn_token:
			break

		while _is_animating:
			await get_tree().create_timer(0.1).timeout
			if turn_token != _ai_turn_token:
				_ai_turn_running = false
				return

		## 적 카드 플레이 연출
		var action_type: String = action.get("type", "")
		if action_type == "play_card":
			await _animate_enemy_card_play()

		await get_tree().create_timer(0.3).timeout
		_sync_minion_stats()
		_refresh_enemy_hand_backs()

	while _is_animating:
		await get_tree().create_timer(0.1).timeout
		if turn_token != _ai_turn_token:
			_ai_turn_running = false
			return

	await get_tree().create_timer(0.5).timeout

	if BattleManager.battle_active and turn_token == _ai_turn_token:
		BattleManager.end_enemy_turn()
	_ai_turn_running = false
