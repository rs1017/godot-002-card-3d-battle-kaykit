class_name ArenaEnvironment extends Node3D
## Minion Masters 레퍼런스 기반 SF 아레나
## - 양 진영 베이스(플레이어/적)
## - 3개 라인 거점(좌/중/우)
## - 중앙 브리지 느낌의 교전 구역

const SPACE: String = "res://assets/kaykit/space-base/addons/kaykit_space_base_bits/Assets/gltf/"
const TILE: float = 2.0
const HALF_W: int = 5
const HALF_D: int = 6
const LANE_X: Array[float] = [-4.0, 0.0, 4.0]

const PLAYER_BASE_Z: float = 9.0
const ENEMY_BASE_Z: float = -9.0

var _cache: Dictionary = {}


func _ready() -> void:
	_build_ground_grid()
	_build_side_boundaries()
	_build_bottom_boundary()
	_build_bases()
	_build_lane_nodes()
	_build_bridge_and_cover()
	_build_team_lighting()


func _build_ground_grid() -> void:
	var g := _grp("Ground")
	var low := _mdl("terrain_low.gltf")
	var mining := _mdl("terrain_mining.gltf")
	if not low:
		return
	if not mining:
		mining = low

	for x in range(-HALF_W, HALF_W + 1):
		for z in range(-HALF_D, HALF_D + 1):
			var tile: PackedScene = mining if (absi(x) <= 1 and absi(z) <= 1) else low
			_put(g, tile, Vector3(x * TILE, 0.0, z * TILE))


func _build_side_boundaries() -> void:
	var g := _grp("Boundaries")
	var wall := _mdl("structure_tall.gltf")
	if not wall:
		wall = _mdl("structure_low.gltf")
	if not wall:
		return

	for z in range(-HALF_D, HALF_D + 1, 2):
		_put(g, wall, Vector3((HALF_W + 1) * TILE, 0.0, z * TILE), Vector3(0.0, -PI * 0.5, 0.0))
		_put(g, wall, Vector3(-(HALF_W + 1) * TILE, 0.0, z * TILE), Vector3(0.0, PI * 0.5, 0.0))


func _build_bottom_boundary() -> void:
	var g := _grp("BottomBoundary")
	var wall := _mdl("structure_tall.gltf")
	if not wall:
		wall = _mdl("structure_low.gltf")
	if not wall:
		return

	var boundary_z: float = (HALF_D + 1) * TILE
	for x in range(-HALF_W, HALF_W + 1):
		## 가운데는 플레이어 베이스 진입감을 위해 통로를 둔다.
		if absi(x) <= 1:
			continue
		_put(g, wall, Vector3(x * TILE, 0.0, boundary_z), Vector3(0.0, PI, 0.0))


func _build_bases() -> void:
	var g := _grp("Bases")
	var base_mod := _mdl("basemodule_A.gltf")
	if not base_mod:
		base_mod = _mdl("basemodule_B.gltf")
	var pad := _mdl("landingpad_large.gltf")
	if not base_mod or not pad:
		return

	_put(g, base_mod, Vector3(0.0, 0.0, PLAYER_BASE_Z), Vector3(0.0, PI, 0.0))
	_put(g, pad, Vector3(0.0, 0.0, PLAYER_BASE_Z - 2.2))

	_put(g, base_mod, Vector3(0.0, 0.0, ENEMY_BASE_Z))
	_put(g, pad, Vector3(0.0, 0.0, ENEMY_BASE_Z + 2.2))

	_team_beacon(g, Vector3(-3.0, 0.8, PLAYER_BASE_Z - 2.5), Color(0.28, 0.62, 1.0))
	_team_beacon(g, Vector3(3.0, 0.8, PLAYER_BASE_Z - 2.5), Color(0.28, 0.62, 1.0))
	_team_beacon(g, Vector3(-3.0, 0.8, ENEMY_BASE_Z + 2.5), Color(1.0, 0.32, 0.30))
	_team_beacon(g, Vector3(3.0, 0.8, ENEMY_BASE_Z + 2.5), Color(1.0, 0.32, 0.30))


func _build_lane_nodes() -> void:
	var g := _grp("LaneNodes")
	var node_pad := _mdl("landingpad_small.gltf")
	if not node_pad:
		return

	for x in LANE_X:
		_put(g, node_pad, Vector3(x, 0.0, 3.8))
		_put(g, node_pad, Vector3(x, 0.0, -3.8))

		## 중앙 거점 강조 조명
		var center_marker: Node3D = _put(g, node_pad, Vector3(x, 0.0, 0.0))
		if center_marker:
			var l := OmniLight3D.new()
			l.light_color = Color(0.75, 0.88, 1.0)
			l.light_energy = 1.6
			l.omni_range = 4.2
			l.shadow_enabled = false
			center_marker.add_child(l)
			l.position = Vector3(0.0, 1.2, 0.0)


func _build_bridge_and_cover() -> void:
	var g := _grp("BridgeAndCover")
	var bridge := _mdl("tunnel_straight_A.gltf")
	if not bridge:
		bridge = _mdl("tunnel_straight_B.gltf")
	var cover_a := _mdl("containers_A.gltf")
	var cover_b := _mdl("containers_B.gltf")
	var rocks := _mdl("rocks_A.gltf")
	if not cover_a:
		cover_a = rocks
	if not cover_b:
		cover_b = rocks

	if bridge:
		for x in LANE_X:
			_put(g, bridge, Vector3(x, 0.0, -1.7), Vector3(0.0, PI * 0.5, 0.0))
			_put(g, bridge, Vector3(x, 0.0, 1.7), Vector3(0.0, PI * 0.5, 0.0))

	if cover_a:
		_put(g, cover_a, Vector3(-8.0, 0.0, 2.5), Vector3(0.0, 0.5, 0.0))
		_put(g, cover_a, Vector3(8.0, 0.0, -2.5), Vector3(0.0, -0.5, 0.0))
	if cover_b:
		_put(g, cover_b, Vector3(8.0, 0.0, 2.5), Vector3(0.0, -0.2, 0.0))
		_put(g, cover_b, Vector3(-8.0, 0.0, -2.5), Vector3(0.0, 0.2, 0.0))


func _build_team_lighting() -> void:
	var g := _grp("Lighting")

	var key := OmniLight3D.new()
	key.light_color = Color(0.95, 0.96, 1.0)
	key.light_energy = 2.0
	key.omni_range = 22.0
	key.shadow_enabled = true
	g.add_child(key)
	key.position = Vector3(0.0, 10.0, 0.0)

	var player_fill := OmniLight3D.new()
	player_fill.light_color = Color(0.28, 0.62, 1.0)
	player_fill.light_energy = 1.1
	player_fill.omni_range = 15.0
	player_fill.shadow_enabled = false
	g.add_child(player_fill)
	player_fill.position = Vector3(0.0, 6.0, 8.0)

	var enemy_fill := OmniLight3D.new()
	enemy_fill.light_color = Color(1.0, 0.35, 0.30)
	enemy_fill.light_energy = 1.1
	enemy_fill.omni_range = 15.0
	enemy_fill.shadow_enabled = false
	g.add_child(enemy_fill)
	enemy_fill.position = Vector3(0.0, 6.0, -8.0)


func _team_beacon(parent: Node3D, pos: Vector3, color: Color) -> void:
	var beacon := OmniLight3D.new()
	beacon.light_color = color
	beacon.light_energy = 2.0
	beacon.omni_range = 5.0
	beacon.shadow_enabled = false
	parent.add_child(beacon)
	beacon.position = pos


func _grp(name: String) -> Node3D:
	var g := Node3D.new()
	g.name = name
	add_child(g)
	return g


func _mdl(file: String) -> PackedScene:
	if _cache.has(file):
		return _cache[file]

	var path: String = SPACE + file
	var result: PackedScene = null
	if ResourceLoader.exists(path):
		result = load(path) as PackedScene
	_cache[file] = result
	return result


func _put(parent: Node3D, scene: PackedScene, pos: Vector3, rot: Vector3 = Vector3.ZERO) -> Node3D:
	if not scene:
		return null
	var n: Node3D = scene.instantiate()
	parent.add_child(n)
	n.position = pos
	if rot != Vector3.ZERO:
		n.rotation = rot
	return n
