class_name FollowCamera extends Camera3D
## 쿼터뷰 팔로우 카메라
## 플레이어를 뒤에서 따라다니며 쿼터뷰 시점을 유지합니다.

@export_group("Target")
## 따라갈 대상 (비어있으면 자동으로 player 그룹에서 찾음)
@export var target: Node3D

@export_group("Camera Settings")
## 타겟으로부터의 오프셋 (뒤, 위, 옆)
@export var offset: Vector3 = Vector3(0, 10, 8)
## 카메라 이동 부드러움 (낮을수록 빠름)
@export var follow_smoothness: float = 5.0
## 카메라 회전 각도 (X축 - 아래로 바라보는 각도)
@export var look_angle: float = -45.0

## 목표 위치
var _target_position: Vector3 = Vector3.ZERO


func _ready() -> void:
	# 타겟이 설정되지 않았으면 player 그룹에서 찾기
	if not target:
		await get_tree().process_frame
		var players: Array = get_tree().get_nodes_in_group("player")
		if players.size() > 0:
			target = players[0] as Node3D
			print("[Camera] Following target: %s" % target.name)

	# 초기 위치 설정
	if target:
		_update_camera_position(1.0)

	# 카메라 각도 설정
	rotation_degrees.x = look_angle


func _physics_process(delta: float) -> void:
	if not target or not is_instance_valid(target):
		return

	_update_camera_position(delta)


## 카메라 위치 업데이트
func _update_camera_position(delta: float) -> void:
	# 타겟 위치 + 오프셋
	_target_position = target.global_position + offset

	# 부드러운 이동
	global_position = global_position.lerp(_target_position, follow_smoothness * delta)
