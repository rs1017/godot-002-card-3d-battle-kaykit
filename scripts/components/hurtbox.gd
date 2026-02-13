class_name HurtBox extends Area3D
## 피격 판정 영역 (HurtBox)
## 항상 활성화되어 HitBox의 공격을 받습니다.

signal hurt(hitbox: HitBox)

## 피격 영역 소유자
var owner_node: Node
## HealthComponent 참조
var health_component: HealthComponent


func _ready() -> void:
	# 항상 활성화
	monitoring = true
	monitorable = true

	# Layer 4: Interactable (HurtBox)
	collision_layer = 0
	set_collision_layer_value(4, true)
	collision_mask = 0


## HitBox로부터 피격 처리
func take_hit(hitbox: HitBox) -> void:
	hurt.emit(hitbox)

	if health_component:
		health_component.take_damage(hitbox.damage, hitbox.owner_node)

	# 넉백 처리
	if owner_node and owner_node is CharacterBody3D and hitbox.owner_node:
		var direction: Vector3 = (owner_node.global_position - hitbox.owner_node.global_position).normalized()
		direction.y = 0
		var character: CharacterBody3D = owner_node as CharacterBody3D
		character.velocity += direction * hitbox.knockback_force

	print("[HurtBox] %s took %d damage from %s" % [
		owner_node.name if owner_node else "Unknown",
		hitbox.damage,
		hitbox.owner_node.name if hitbox.owner_node else "Unknown"
	])
