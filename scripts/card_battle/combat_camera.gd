class_name CombatCamera extends Node
## 전투 카메라 시스템 - 줌인/줌아웃, 화면 흔들림

var camera: Camera3D
var default_transform: Transform3D
var default_fov: float = 45.0
var combat_fov: float = 32.0
var is_zoomed: bool = false

var _shake_tween: Tween
var _move_tween: Tween


func setup(cam: Camera3D) -> void:
	camera = cam
	if camera:
		default_transform = camera.global_transform
		default_fov = camera.fov


func zoom_to_combat(attacker_pos: Vector3, target_pos: Vector3) -> void:
	if not camera:
		return

	is_zoomed = true
	var mid_point: Vector3 = (attacker_pos + target_pos) / 2.0
	mid_point.y = 0.5

	## 카메라 → 전투 중앙 방향 벡터 계산
	var dir_to_combat: Vector3 = (mid_point - default_transform.origin).normalized()
	var target_pos_cam: Vector3 = default_transform.origin + dir_to_combat * 2.5
	## Y는 약간 내려서 가까이 보이게
	target_pos_cam.y = default_transform.origin.y - 1.5

	_kill_move_tween()
	_move_tween = camera.create_tween()
	_move_tween.set_parallel(true)
	_move_tween.set_ease(Tween.EASE_OUT)
	_move_tween.set_trans(Tween.TRANS_CUBIC)
	_move_tween.tween_property(camera, "global_position", target_pos_cam, 0.4)
	_move_tween.tween_property(camera, "fov", combat_fov, 0.4)
	await _move_tween.finished


func zoom_to_spell(caster_pos: Vector3, target_pos: Vector3) -> void:
	await zoom_to_combat(caster_pos, target_pos)


func return_to_overview() -> void:
	if not camera or not is_zoomed:
		return

	is_zoomed = false
	_kill_move_tween()
	_move_tween = camera.create_tween()
	_move_tween.set_parallel(true)
	_move_tween.set_ease(Tween.EASE_OUT)
	_move_tween.set_trans(Tween.TRANS_CUBIC)
	_move_tween.tween_property(camera, "global_position", default_transform.origin, 0.3)
	_move_tween.tween_property(camera, "fov", default_fov, 0.3)
	await _move_tween.finished


func shake(intensity: float = 0.15, duration: float = 0.3) -> void:
	if not camera:
		return

	var base_pos: Vector3 = camera.global_position
	_kill_shake_tween()
	_shake_tween = camera.create_tween()

	var steps: int = int(duration / 0.05)
	for i in range(steps):
		var offset := Vector3(
			randf_range(-intensity, intensity),
			randf_range(-intensity * 0.5, intensity * 0.5),
			randf_range(-intensity * 0.3, intensity * 0.3)
		)
		## 점점 감소
		var decay: float = 1.0 - float(i) / float(steps)
		_shake_tween.tween_property(camera, "global_position", base_pos + offset * decay, 0.05)

	_shake_tween.tween_property(camera, "global_position", base_pos, 0.05)


func _kill_move_tween() -> void:
	if _move_tween and _move_tween.is_valid():
		_move_tween.kill()


func _kill_shake_tween() -> void:
	if _shake_tween and _shake_tween.is_valid():
		_shake_tween.kill()
