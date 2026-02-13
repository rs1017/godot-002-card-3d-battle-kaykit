class_name SummonEffect extends Node3D
## 소환 이펙트 - 금색 파티클 + 라이트 플래시

@onready var particles: GPUParticles3D = $GPUParticles3D
@onready var flash_light: OmniLight3D = $FlashLight


func play_at(pos: Vector3) -> void:
	global_position = pos
	if particles:
		particles.emitting = true
	if flash_light:
		flash_light.light_energy = 3.0
		var tween: Tween = create_tween()
		tween.tween_property(flash_light, "light_energy", 0.0, 0.6)

	## 파티클이 끝나면 자동 삭제
	await get_tree().create_timer(1.5).timeout
	queue_free()
