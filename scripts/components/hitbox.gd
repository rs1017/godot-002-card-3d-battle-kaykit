class_name HitBox extends Area3D
## 공격 판정 영역 (HitBox)
## 공격 시 활성화되어 HurtBox와 충돌을 감지합니다.

signal hit_landed(hurtbox: HurtBox)

## 공격 데미지
@export var damage: int = 10
## 넉백 힘
@export var knockback_force: float = 5.0
## 공격 소유자
var owner_node: Node


func _ready() -> void:
	# 기본적으로 비활성화
	monitoring = false
	monitorable = false

	# HurtBox와만 충돌하도록 설정
	collision_layer = 0
	collision_mask = 0
	set_collision_mask_value(4, true)  # Layer 4: Interactable (HurtBox)

	area_entered.connect(_on_area_entered)


## HitBox 활성화
func enable() -> void:
	monitoring = true
	monitorable = true


## HitBox 비활성화
func disable() -> void:
	monitoring = false
	monitorable = false


## HurtBox와 충돌 시
func _on_area_entered(area: Area3D) -> void:
	if area is HurtBox:
		var hurtbox: HurtBox = area as HurtBox
		# 자기 자신 공격 방지
		if hurtbox.owner_node == owner_node:
			return

		hurtbox.take_hit(self)
		hit_landed.emit(hurtbox)
		print("[HitBox] Hit landed on: %s" % hurtbox.owner_node.name if hurtbox.owner_node else "Unknown")
