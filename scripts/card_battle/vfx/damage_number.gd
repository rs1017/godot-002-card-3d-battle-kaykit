class_name DamageNumber extends Node3D
## 플로팅 데미지 숫자 - 위로 떠오르며 페이드아웃

@onready var label: Label3D = $Label3D


func show_damage(amount: int, pos: Vector3) -> void:
	global_position = pos + Vector3(randf_range(-0.2, 0.2), 1.2, 0.0)
	if label:
		label.text = "-%d" % amount
		label.modulate = Color(1.0, 0.2, 0.2, 1.0)
	_animate()


func show_heal(amount: int, pos: Vector3) -> void:
	global_position = pos + Vector3(randf_range(-0.2, 0.2), 1.2, 0.0)
	if label:
		label.text = "+%d" % amount
		label.modulate = Color(0.2, 1.0, 0.3, 1.0)
	_animate()


func _animate() -> void:
	scale = Vector3.ZERO
	## 팝인
	var tween: Tween = create_tween()
	tween.set_ease(Tween.EASE_OUT)
	tween.set_trans(Tween.TRANS_BACK)
	tween.tween_property(self, "scale", Vector3.ONE * 1.2, 0.15)
	tween.tween_property(self, "scale", Vector3.ONE, 0.1)

	## 위로 떠오르며 페이드
	tween.set_parallel(true)
	tween.tween_property(self, "position:y", position.y + 1.0, 0.8).set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_QUAD)
	if label:
		tween.tween_property(label, "modulate:a", 0.0, 0.8).set_delay(0.3)
	tween.set_parallel(false)

	await tween.finished
	queue_free()
