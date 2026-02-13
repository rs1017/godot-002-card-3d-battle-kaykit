extends CanvasLayer
## 버그 리포트 시스템 v3
## F12 → 전체 스크린샷 + 번호 오버레이 → 툴바 (전체저장 / 영역선택 / 닫기)
## 저장 시 설명 입력 가능

signal report_captured(screenshot_path: String, object_map: Dictionary)

const SCREENSHOT_DIR: String = "user://bug_reports/"
const MARKER_SIZE: int = 44

enum ReportState { IDLE, NUMBERED, CROPPING, DESCRIBING }

var state: ReportState = ReportState.IDLE
var object_map: Dictionary = {}
var marker_nodes: Array[Control] = []

## 크롭 관련
var crop_start: Vector2 = Vector2.ZERO
var crop_end: Vector2 = Vector2.ZERO
var is_dragging_crop: bool = false
var _frozen_image: Image = null

## 설명 패널 관련
var _pending_image_path: String = ""
var _pending_included_objects: Array[int] = []

@onready var bug_button: Button = $BugReportButton
@onready var overlay: Control = $Overlay
@onready var toolbar: HBoxContainer = $Toolbar
@onready var info_label: Label = $InfoLabel
@onready var frozen_screen: TextureRect = $FrozenScreen
@onready var crop_rect_draw: Control = $CropOverlay
@onready var desc_panel: PanelContainer = $DescriptionPanel
@onready var desc_text_edit: TextEdit = $DescriptionPanel/VBox/DescTextEdit


func _ready() -> void:
	layer = 100
	if bug_button:
		bug_button.pressed.connect(_on_bug_report_pressed)
	if overlay:
		overlay.visible = false
		overlay.mouse_filter = Control.MOUSE_FILTER_IGNORE
	if toolbar:
		toolbar.visible = false
	if info_label:
		info_label.visible = false
	if frozen_screen:
		frozen_screen.visible = false
	if crop_rect_draw:
		crop_rect_draw.visible = false
		crop_rect_draw.draw.connect(_on_crop_overlay_draw)
	if desc_panel:
		desc_panel.visible = false


func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventKey:
		var key: InputEventKey = event as InputEventKey
		if key.pressed and key.keycode == KEY_F12:
			if state == ReportState.IDLE:
				_on_bug_report_pressed()
			else:
				_close_report()
		elif key.pressed and key.keycode == KEY_ESCAPE:
			if state == ReportState.DESCRIBING:
				_hide_description_panel()
				state = ReportState.NUMBERED
				if toolbar:
					toolbar.visible = true
			elif state == ReportState.CROPPING:
				_cancel_crop()
			elif state == ReportState.NUMBERED:
				_close_report()


## ========== 메인 플로우 ==========

func _on_bug_report_pressed() -> void:
	if state != ReportState.IDLE:
		_close_report()
		return

	## 1. 오브젝트에 번호 매기기 + UI 즉시 표시 (이미지 캡처 없음!)
	object_map.clear()
	_collect_and_number_objects()

	if overlay:
		overlay.visible = true
	if toolbar:
		toolbar.visible = true
	if info_label:
		info_label.visible = true
		info_label.text = "Select: Save Full / Select Region / Close (ESC)"
	state = ReportState.NUMBERED

	_print_object_map()
	print("[BugReporter] %d objects numbered" % object_map.size())


## ========== 툴바 버튼 핸들러 ==========

func _on_crop_pressed() -> void:
	state = ReportState.CROPPING
	is_dragging_crop = false
	crop_start = Vector2.ZERO
	crop_end = Vector2.ZERO

	## 현재 화면을 캡처하여 프리즈 이미지로 표시 (즉시 전환)
	_frozen_image = get_viewport().get_texture().get_image()
	if frozen_screen:
		var frozen_tex: ImageTexture = ImageTexture.create_from_image(_frozen_image)
		frozen_screen.texture = frozen_tex
		frozen_screen.visible = true

	if crop_rect_draw:
		crop_rect_draw.visible = true
		crop_rect_draw.mouse_filter = Control.MOUSE_FILTER_STOP
		crop_rect_draw.queue_redraw()

	## 십자 커서로 변경
	Input.set_default_cursor_shape(Input.CURSOR_CROSS)

	if toolbar:
		toolbar.visible = false

	if info_label:
		info_label.visible = true
		info_label.text = "Drag to select region  |  Right-click or ESC to cancel"


func _on_save_full_pressed() -> void:
	## 번호 포함 전체 스크린샷 캡처 + 저장
	if info_label:
		info_label.text = "Saving..."
	await get_tree().process_frame
	var image: Image = get_viewport().get_texture().get_image()
	var path: String = _save_image(image, "report")
	print("[BugReporter] Saved report: %s" % path)

	## 모든 오브젝트 번호를 포함
	var all_objects: Array[int] = []
	for key in object_map:
		all_objects.append(key)
	all_objects.sort()

	## 설명 패널 표시
	_show_description_panel(path, all_objects)


func _on_close_pressed() -> void:
	_close_report()


## ========== 크롭 입력 처리 (gui_input 시그널) ==========

func _on_crop_gui_input(event: InputEvent) -> void:
	if state != ReportState.CROPPING:
		return

	if event is InputEventMouseButton:
		var mb: InputEventMouseButton = event as InputEventMouseButton
		if mb.button_index == MOUSE_BUTTON_LEFT:
			if mb.pressed:
				is_dragging_crop = true
				crop_start = mb.position
				crop_end = mb.position
			else:
				is_dragging_crop = false
				if crop_start.distance_to(crop_end) > 20:
					_save_cropped_region()
		elif mb.button_index == MOUSE_BUTTON_RIGHT and mb.pressed:
			_cancel_crop()
		crop_rect_draw.accept_event()

	elif event is InputEventMouseMotion and is_dragging_crop:
		crop_end = (event as InputEventMouseMotion).position
		if crop_rect_draw:
			crop_rect_draw.queue_redraw()
		crop_rect_draw.accept_event()


## ========== 크롭 ==========

func _save_cropped_region() -> void:
	## 크롭 사각형 정규화
	var rect := Rect2(
		Vector2(min(crop_start.x, crop_end.x), min(crop_start.y, crop_end.y)),
		Vector2(abs(crop_end.x - crop_start.x), abs(crop_end.y - crop_start.y))
	)

	## 프리즈된 번호 포함 스크린샷에서 크롭
	var source_image: Image = _frozen_image if _frozen_image else get_viewport().get_texture().get_image()
	var cropped: Image = source_image.get_region(Rect2i(
		int(rect.position.x), int(rect.position.y),
		int(rect.size.x), int(rect.size.y)
	))

	var path: String = _save_image(cropped, "crop")

	## 크롭 영역에 포함된 오브젝트 번호 수집
	var included: Array[int] = []
	for key in object_map:
		var marker_pos: Vector2 = _get_marker_screen_pos(key)
		if rect.has_point(marker_pos):
			included.append(key)
	included.sort()

	print("[BugReporter] Cropped region saved: %s" % path)
	if included.size() > 0:
		print("[BugReporter] Objects in region:")
		for idx in included:
			print("  [%d] %s" % [idx, object_map[idx]["name"]])
	else:
		print("[BugReporter] No numbered objects in selected region")

	## 크롭 오버레이 숨기고 설명 패널 표시
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
	if frozen_screen:
		frozen_screen.visible = false
	if crop_rect_draw:
		crop_rect_draw.visible = false
	_show_description_panel(path, included)


func _cancel_crop() -> void:
	state = ReportState.NUMBERED
	is_dragging_crop = false
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
	if frozen_screen:
		frozen_screen.visible = false
	if crop_rect_draw:
		crop_rect_draw.visible = false
		crop_rect_draw.queue_redraw()
	if toolbar:
		toolbar.visible = true
	if info_label:
		info_label.text = "Select action from toolbar"


func _on_crop_overlay_draw() -> void:
	if not crop_rect_draw:
		return

	var viewport_size: Vector2 = get_viewport().get_visible_rect().size

	## 드래그 전: 전체 반투명 오버레이 + 안내 텍스트로 크롭 모드 표시
	if not is_dragging_crop:
		crop_rect_draw.draw_rect(Rect2(Vector2.ZERO, viewport_size), Color(0, 0, 0, 0.3))
		## 중앙 안내 텍스트
		var font: Font = ThemeDB.fallback_font
		var msg: String = "DRAG TO SELECT REGION"
		var font_size: int = 28
		var text_size: Vector2 = font.get_string_size(msg, HORIZONTAL_ALIGNMENT_CENTER, -1, font_size)
		var text_pos: Vector2 = (viewport_size - text_size) / 2.0
		text_pos.y += text_size.y
		crop_rect_draw.draw_string(font, text_pos, msg, HORIZONTAL_ALIGNMENT_CENTER, -1, font_size, Color(1, 1, 1, 0.8))
		return

	## 드래그 중: 선택 영역 외 어둡게
	var rect := Rect2(
		Vector2(min(crop_start.x, crop_end.x), min(crop_start.y, crop_end.y)),
		Vector2(abs(crop_end.x - crop_start.x), abs(crop_end.y - crop_start.y))
	)
	var dim_color := Color(0, 0, 0, 0.5)
	## 위
	crop_rect_draw.draw_rect(Rect2(0, 0, viewport_size.x, rect.position.y), dim_color)
	## 아래
	crop_rect_draw.draw_rect(Rect2(0, rect.end.y, viewport_size.x, viewport_size.y - rect.end.y), dim_color)
	## 왼쪽
	crop_rect_draw.draw_rect(Rect2(0, rect.position.y, rect.position.x, rect.size.y), dim_color)
	## 오른쪽
	crop_rect_draw.draw_rect(Rect2(rect.end.x, rect.position.y, viewport_size.x - rect.end.x, rect.size.y), dim_color)

	## 선택 영역 테두리
	crop_rect_draw.draw_rect(rect, Color.YELLOW, false, 3.0)
	## 코너 표시
	var corner_size: float = 12.0
	for corner in [rect.position, Vector2(rect.end.x, rect.position.y), Vector2(rect.position.x, rect.end.y), rect.end]:
		crop_rect_draw.draw_circle(corner, corner_size / 2.0, Color.YELLOW)


## ========== 설명 패널 ==========

func _show_description_panel(image_path: String, included_objects: Array[int]) -> void:
	state = ReportState.DESCRIBING
	_pending_image_path = image_path
	_pending_included_objects = included_objects

	if toolbar:
		toolbar.visible = false
	if info_label:
		info_label.visible = false

	if desc_panel:
		desc_panel.visible = true
	if desc_text_edit:
		desc_text_edit.text = ""
		## 포함된 오브젝트 번호 힌트 표시
		if included_objects.size() > 0:
			var hint_lines: Array[String] = []
			for idx in included_objects:
				if object_map.has(idx):
					hint_lines.append("[%d] %s" % [idx, object_map[idx]["name"]])
			desc_text_edit.placeholder_text = "Objects: %s\nDescribe the bug..." % ", ".join(
				included_objects.map(func(n: int) -> String: return "[%d]" % n)
			)
		else:
			desc_text_edit.placeholder_text = "Describe the bug here... Use [N] to reference numbered objects."
		desc_text_edit.grab_focus()


func _hide_description_panel() -> void:
	if desc_panel:
		desc_panel.visible = false
	if info_label:
		info_label.visible = true
	_pending_image_path = ""
	_pending_included_objects.clear()


func _on_save_desc_pressed() -> void:
	var description: String = ""
	if desc_text_edit:
		description = desc_text_edit.text.strip_edges()

	_save_description_file(_pending_image_path, description, _pending_included_objects)
	_hide_description_panel()

	state = ReportState.NUMBERED
	if toolbar:
		toolbar.visible = true
	if info_label:
		info_label.visible = true
		info_label.text = "Report saved! Select another action or Close."


func _on_skip_desc_pressed() -> void:
	## 설명 없이 이미지만 저장 (이미 저장됨)
	print("[BugReporter] Skipped description for: %s" % _pending_image_path.get_file())
	_hide_description_panel()

	state = ReportState.NUMBERED
	if toolbar:
		toolbar.visible = true
	if info_label:
		info_label.visible = true
		info_label.text = "Skipped description. Select another action or Close."


func _save_description_file(image_path: String, description: String, included: Array[int]) -> void:
	## 이미지 경로에서 .png → .txt 로 변환
	var txt_path: String = image_path.replace(".png", ".txt")

	var content: String = "=== Bug Report ===\n"
	content += "Screenshot: %s\n" % image_path.get_file()
	content += "Time: %s\n\n" % Time.get_datetime_string_from_system()

	if included.size() > 0:
		content += "=== Referenced Objects ===\n"
		for idx in included:
			if object_map.has(idx):
				var info: Dictionary = object_map[idx]
				content += "  [%d] %s (%s)\n" % [idx, info["name"], info["type"]]
		content += "\n"

	if description.length() > 0:
		content += "=== Description ===\n"
		content += description + "\n"
	else:
		content += "=== Description ===\n(no description)\n"

	var file: FileAccess = FileAccess.open(txt_path, FileAccess.WRITE)
	if file:
		file.store_string(content)
		file.close()
		print("[BugReporter] Description saved: %s" % txt_path)
	else:
		print("[BugReporter] Failed to save description: %s" % txt_path)


## ========== 오브젝트 수집 ==========

func _collect_and_number_objects() -> void:
	var number: int = 1
	var viewport: Viewport = get_viewport()
	var camera: Camera3D = viewport.get_camera_3d()

	var battle_board: Node = _find_node_by_type(get_tree().root, "battle_board")
	if battle_board:
		var player_hero: Node = battle_board.get_node_or_null("PlayerSide/HeroPortrait")
		if player_hero and player_hero is Node3D:
			number = _add_3d_marker(player_hero as Node3D, number, "Player Hero", camera)

		var enemy_hero: Node = battle_board.get_node_or_null("EnemySide/HeroPortrait")
		if enemy_hero and enemy_hero is Node3D:
			number = _add_3d_marker(enemy_hero as Node3D, number, "Enemy Hero", camera)

		var hand_area: Node = battle_board.get_node_or_null("PlayerSide/HandArea")
		if hand_area:
			for child in hand_area.get_children():
				if child is Node3D:
					var card_name: String = "Card"
					if child.has_method("setup") and child.get("card_data"):
						var cd: CardData = child.get("card_data") as CardData
						if cd:
							card_name = "Card: %s (%dM)" % [cd.card_name, cd.mana_cost]
					number = _add_3d_marker(child as Node3D, number, card_name, camera)

		var player_board: Node = battle_board.get_node_or_null("PlayerSide/BoardSlots")
		if player_board:
			for child in player_board.get_children():
				if child is Node3D and child.has_method("setup"):
					var minion_name: String = "Player Minion"
					if child.get("card_data"):
						var cd: CardData = child.get("card_data") as CardData
						if cd:
							minion_name = "P-Minion: %s" % cd.card_name
					number = _add_3d_marker(child as Node3D, number, minion_name, camera)

		var enemy_board: Node = battle_board.get_node_or_null("EnemySide/BoardSlots")
		if enemy_board:
			for child in enemy_board.get_children():
				if child is Node3D and child.has_method("setup"):
					var minion_name: String = "Enemy Minion"
					if child.get("card_data"):
						var cd: CardData = child.get("card_data") as CardData
						if cd:
							minion_name = "E-Minion: %s" % cd.card_name
					number = _add_3d_marker(child as Node3D, number, minion_name, camera)

		var enemy_hand: Node = battle_board.get_node_or_null("EnemySide/HandArea")
		if enemy_hand and enemy_hand.get_child_count() > 0:
			number = _add_3d_marker(enemy_hand as Node3D, number, "Enemy Hand (%d cards)" % enemy_hand.get_child_count(), camera)

		var table: Node = battle_board.get_node_or_null("Table")
		if table and table is Node3D:
			number = _add_3d_marker(table as Node3D, number, "Table", camera)

		var divider: Node = battle_board.get_node_or_null("CenterDivider")
		if divider and divider is Node3D:
			number = _add_3d_marker(divider as Node3D, number, "Center Divider", camera)

	var hud: Node = _find_node_by_script(get_tree().root, "battle_hud")
	if hud:
		var ui_targets: Array[String] = [
			"PlayerPanel", "EnemyPanel", "TurnIndicator",
			"EndTurnButton", "BattleLog", "GameOverPanel"
		]
		for target_name in ui_targets:
			var target: Node = hud.get_node_or_null(target_name)
			if target and target is Control and (target as Control).visible:
				number = _add_2d_marker(target as Control, number, target_name)

	if bug_button:
		number = _add_2d_marker(bug_button, number, "Bug Report Button")


## ========== 마커 생성 ==========

var _marker_positions: Dictionary = {}  ## number -> screen_pos

func _add_3d_marker(node: Node3D, number: int, label_text: String, camera: Camera3D) -> int:
	if not camera:
		return number
	var screen_pos: Vector2 = camera.unproject_position(node.global_position)
	var vp_size: Vector2 = get_viewport().get_visible_rect().size
	if screen_pos.x < 0 or screen_pos.x > vp_size.x or screen_pos.y < 0 or screen_pos.y > vp_size.y:
		return number
	if camera.global_position.direction_to(node.global_position).dot(-camera.global_basis.z) < 0:
		return number

	_create_marker_ui(screen_pos, number, label_text)
	_marker_positions[number] = screen_pos
	object_map[number] = {"name": label_text, "type": "3D", "path": str(node.get_path()), "position": node.global_position}
	return number + 1


func _add_2d_marker(control: Control, number: int, label_text: String) -> int:
	var rect: Rect2 = control.get_global_rect()
	var screen_pos := Vector2(rect.position.x + rect.size.x / 2.0, rect.position.y + rect.size.y / 2.0)

	_create_marker_ui(screen_pos, number, label_text)
	_marker_positions[number] = screen_pos
	object_map[number] = {"name": label_text, "type": "2D-UI", "path": str(control.get_path())}
	return number + 1


func _get_marker_screen_pos(number: int) -> Vector2:
	return _marker_positions.get(number, Vector2(-1, -1))


func _create_marker_ui(screen_pos: Vector2, number: int, tooltip_text: String) -> void:
	if not overlay:
		return

	var half: float = MARKER_SIZE / 2.0
	var radius: int = MARKER_SIZE / 2

	var marker := Panel.new()
	marker.custom_minimum_size = Vector2(MARKER_SIZE, MARKER_SIZE)
	marker.size = Vector2(MARKER_SIZE, MARKER_SIZE)
	marker.position = screen_pos - Vector2(half, half)
	marker.mouse_filter = Control.MOUSE_FILTER_IGNORE
	marker.tooltip_text = "%d: %s" % [number, tooltip_text]

	var style := StyleBoxFlat.new()
	style.bg_color = Color(0.9, 0.1, 0.1, 0.95)
	style.corner_radius_top_left = radius
	style.corner_radius_top_right = radius
	style.corner_radius_bottom_left = radius
	style.corner_radius_bottom_right = radius
	style.border_width_top = 3
	style.border_width_bottom = 3
	style.border_width_left = 3
	style.border_width_right = 3
	style.border_color = Color.YELLOW
	marker.add_theme_stylebox_override("panel", style)

	var num_label := Label.new()
	num_label.text = str(number)
	num_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	num_label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	num_label.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
	num_label.mouse_filter = Control.MOUSE_FILTER_IGNORE
	num_label.add_theme_color_override("font_color", Color.WHITE)
	num_label.add_theme_font_size_override("font_size", 22)
	num_label.add_theme_color_override("font_shadow_color", Color.BLACK)
	num_label.add_theme_constant_override("shadow_offset_x", 1)
	num_label.add_theme_constant_override("shadow_offset_y", 1)
	num_label.add_theme_constant_override("outline_size", 4)
	num_label.add_theme_color_override("font_outline_color", Color.BLACK)
	marker.add_child(num_label)

	overlay.add_child(marker)
	marker_nodes.append(marker)


## ========== 스크린샷 저장 ==========

func _save_image(image: Image, tag: String) -> String:
	var dir_path: String = ProjectSettings.globalize_path(SCREENSHOT_DIR)
	if not DirAccess.dir_exists_absolute(dir_path):
		DirAccess.make_dir_recursive_absolute(dir_path)

	var timestamp: String = Time.get_datetime_string_from_system().replace(":", "-").replace("T", "_")
	var filename: String = "bug_%s_%s.png" % [tag, timestamp]
	var global_path: String = dir_path + "/" + filename
	image.save_png(global_path)
	return global_path


## ========== 유틸 ==========

func _print_object_map() -> void:
	print("\n=== BUG REPORT OBJECT MAP ===")
	var keys: Array = object_map.keys()
	keys.sort()
	for key in keys:
		var info: Dictionary = object_map[key]
		print("  [%d] %s (%s)" % [key, info["name"], info["type"]])
	print("=============================\n")


func _close_report() -> void:
	state = ReportState.IDLE
	is_dragging_crop = false
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
	_marker_positions.clear()
	_pending_image_path = ""
	_pending_included_objects.clear()
	for marker in marker_nodes:
		if is_instance_valid(marker):
			marker.queue_free()
	marker_nodes.clear()
	object_map.clear()
	_frozen_image = null
	if overlay:
		overlay.visible = false
	if toolbar:
		toolbar.visible = false
	if info_label:
		info_label.visible = false
	if frozen_screen:
		frozen_screen.visible = false
	if crop_rect_draw:
		crop_rect_draw.visible = false
	if desc_panel:
		desc_panel.visible = false


func _find_node_by_type(root: Node, type_hint: String) -> Node:
	if root.get_script():
		var script_path: String = root.get_script().resource_path
		if type_hint in script_path:
			return root
	for child in root.get_children():
		var result: Node = _find_node_by_type(child, type_hint)
		if result:
			return result
	return null


func _find_node_by_script(root: Node, script_hint: String) -> Node:
	if root.get_script():
		var script_path: String = root.get_script().resource_path
		if script_hint in script_path:
			return root
	for child in root.get_children():
		var result: Node = _find_node_by_script(child, script_hint)
		if result:
			return result
	return null
