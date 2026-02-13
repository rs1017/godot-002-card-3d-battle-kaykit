class_name Player extends CharacterBody3D
## 플레이어 캐릭터
## Top-Down Action Adventure 스타일의 플레이어 컨트롤러

signal player_died
signal player_hit(damage: int)

@export_group("References")
@export var model: Node3D
@export var animation_player: AnimationPlayer
@export var state_machine: StateMachine
@export var health_component: HealthComponent
@export var hitbox: HitBox
@export var hurtbox: HurtBox


func _ready() -> void:
	# 컴포넌트 자동 검색 (export가 비어있을 경우)
	if not model:
		model = get_node_or_null("Model")
	if not animation_player:
		# GLB 모델 내부에서 AnimationPlayer 찾기
		animation_player = _find_animation_player(model)
	if not state_machine:
		state_machine = get_node_or_null("StateMachine")
	if not health_component:
		health_component = get_node_or_null("HealthComponent")
	if not hitbox:
		hitbox = get_node_or_null("HitBox")
	if not hurtbox:
		hurtbox = get_node_or_null("HurtBox")

	_setup_components()
	_connect_signals()

	# 애니메이션 목록 출력 (디버그용)
	if animation_player:
		print("[Player] Available animations: %s" % str(animation_player.get_animation_list()))

	print("[Player] Initialized")


## GLB 모델 내부에서 AnimationPlayer 찾기
func _find_animation_player(node: Node) -> AnimationPlayer:
	if node == null:
		return null

	# 직접 AnimationPlayer인 경우
	if node is AnimationPlayer:
		return node as AnimationPlayer

	# 자식 노드에서 찾기
	for child in node.get_children():
		if child is AnimationPlayer:
			return child as AnimationPlayer
		var found: AnimationPlayer = _find_animation_player(child)
		if found:
			return found

	return null


func _setup_components() -> void:
	# StateMachine 설정
	if state_machine and animation_player:
		state_machine.setup(self, animation_player)

	# HitBox 설정
	if hitbox:
		hitbox.owner_node = self

	# HurtBox 설정
	if hurtbox:
		hurtbox.owner_node = self
		if health_component:
			hurtbox.health_component = health_component


func _connect_signals() -> void:
	# HealthComponent 시그널 연결
	if health_component:
		health_component.damage_taken.connect(_on_damage_taken)
		health_component.died.connect(_on_died)

	# HurtBox 시그널 연결
	if hurtbox:
		hurtbox.hurt.connect(_on_hurt)


func _on_damage_taken(amount: int, source: Node) -> void:
	player_hit.emit(amount)
	print("[Player] Took %d damage" % amount)


func _on_died() -> void:
	if state_machine:
		state_machine.transition_to("Death")
	player_died.emit()
	print("[Player] Died")


func _on_hurt(hitbox: HitBox) -> void:
	# 피격 시 Hit 상태로 전환 (무적이 아닐 때만)
	if health_component and not health_component.is_invincible:
		if state_machine and not state_machine.is_in_state("Death"):
			# Dodge 상태가 아닐 때만 Hit 상태로
			if not state_machine.is_in_state("Dodge"):
				state_machine.transition_to("Hit")


## 외부에서 데미지 적용
func take_damage(amount: int, source: Node = null) -> void:
	if health_component:
		health_component.take_damage(amount, source)


## 생존 여부 확인
func is_alive() -> bool:
	if health_component:
		return health_component.is_alive()
	return true


## 회복
func heal(amount: int) -> void:
	if health_component:
		health_component.heal(amount)
