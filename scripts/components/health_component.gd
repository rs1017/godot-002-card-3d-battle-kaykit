class_name HealthComponent extends Node
## 체력 관리 컴포넌트
## 캐릭터의 체력, 피해, 회복, 사망을 처리합니다.

signal health_changed(current_health: int, max_health: int)
signal damage_taken(amount: int, source: Node)
signal healed(amount: int)
signal died
signal revived

## 최대 체력
@export var max_health: int = 100
## 현재 체력
@export var current_health: int = 100:
	set(value):
		var old_health: int = current_health
		current_health = clampi(value, 0, max_health)
		if current_health != old_health:
			health_changed.emit(current_health, max_health)
			if current_health <= 0 and old_health > 0:
				died.emit()

## 무적 상태 여부
var is_invincible: bool = false
## 사망 여부
var is_dead: bool = false


func _ready() -> void:
	current_health = max_health


## 피해 처리
func take_damage(amount: int, source: Node = null) -> void:
	if is_invincible or is_dead:
		return

	current_health -= amount
	damage_taken.emit(amount, source)
	print("[HealthComponent] Damage taken: %d (HP: %d/%d)" % [amount, current_health, max_health])

	if current_health <= 0:
		is_dead = true


## 회복 처리
func heal(amount: int) -> void:
	if is_dead:
		return

	var old_health: int = current_health
	current_health += amount
	var actual_heal: int = current_health - old_health

	if actual_heal > 0:
		healed.emit(actual_heal)
		print("[HealthComponent] Healed: %d (HP: %d/%d)" % [actual_heal, current_health, max_health])


## 체력 비율 반환 (0.0 ~ 1.0)
func get_health_ratio() -> float:
	return float(current_health) / float(max_health) if max_health > 0 else 0.0


## 사망 여부 확인
func is_alive() -> bool:
	return not is_dead


## 부활 처리
func revive(health_amount: int = -1) -> void:
	if not is_dead:
		return

	is_dead = false
	if health_amount < 0:
		current_health = max_health
	else:
		current_health = mini(health_amount, max_health)

	revived.emit()
	print("[HealthComponent] Revived (HP: %d/%d)" % [current_health, max_health])


## 무적 시간 설정
func set_invincible_for(duration: float) -> void:
	is_invincible = true
	await get_tree().create_timer(duration).timeout
	is_invincible = false
