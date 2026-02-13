class_name SpellEffect extends Node3D
## 주문 이펙트 - 파이어볼/힐 등

@onready var particles: GPUParticles3D = $GPUParticles3D
@onready var flash_light: OmniLight3D = $FlashLight

var travel_speed: float = 8.0


func fire_at(from_pos: Vector3, to_pos: Vector3) -> void:
	## 투사체 이동 (파이어볼 등)
	global_position = from_pos + Vector3(0, 0.8, 0)
	if particles:
		particles.emitting = true
	if flash_light:
		flash_light.light_energy = 2.0

	var target: Vector3 = to_pos + Vector3(0, 0.8, 0)
	var distance: float = global_position.distance_to(target)
	var duration: float = distance / travel_speed

	var tween: Tween = create_tween()
	tween.tween_property(self, "global_position", target, duration)
	await tween.finished

	## 충돌 시 폭발
	_explode()


func play_at_target(pos: Vector3) -> void:
	## 대상 위치에서 재생 (힐 등)
	global_position = pos
	if particles:
		particles.emitting = true
	if flash_light:
		flash_light.light_energy = 2.0
		var tween: Tween = create_tween()
		tween.tween_property(flash_light, "light_energy", 0.0, 0.8)

	await get_tree().create_timer(1.5).timeout
	queue_free()


func _explode() -> void:
	## 파티클 정지 후 폭발 표현
	if particles:
		particles.emitting = false
	if flash_light:
		flash_light.light_energy = 5.0
		var tween: Tween = create_tween()
		tween.tween_property(flash_light, "light_energy", 0.0, 0.4)

	## 스케일 팝
	var tween: Tween = create_tween()
	tween.tween_property(self, "scale", Vector3.ONE * 2.0, 0.15)
	tween.tween_property(self, "scale", Vector3.ZERO, 0.2)
	await tween.finished
	queue_free()
