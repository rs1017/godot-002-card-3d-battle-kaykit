extends Node
## 오디오 관리 싱글톤

var music_player: AudioStreamPlayer
var sfx_players: Array[AudioStreamPlayer] = []
var sfx_pool_size: int = 8

var master_volume: float = 1.0
var music_volume: float = 0.8
var sfx_volume: float = 1.0
var generated_sfx: Dictionary = {}


func _ready() -> void:
	_setup_audio_players()
	_build_default_sfx()
	print("[AudioManager] Initialized")


func _setup_audio_players() -> void:
	var music_bus_name: String = "Music" if AudioServer.get_bus_index("Music") >= 0 else "Master"
	var sfx_bus_name: String = "SFX" if AudioServer.get_bus_index("SFX") >= 0 else "Master"

	# 음악 플레이어
	music_player = AudioStreamPlayer.new()
	music_player.bus = music_bus_name
	add_child(music_player)

	# SFX 플레이어 풀
	for i in range(sfx_pool_size):
		var player: AudioStreamPlayer = AudioStreamPlayer.new()
		player.bus = sfx_bus_name
		add_child(player)
		sfx_players.append(player)


func play_music(stream: AudioStream, fade_in: float = 0.5) -> void:
	if music_player.playing:
		# 페이드 아웃 후 새 음악 재생
		var tween: Tween = create_tween()
		tween.tween_property(music_player, "volume_db", -80.0, fade_in)
		await tween.finished

	music_player.stream = stream
	music_player.volume_db = -80.0
	music_player.play()

	var tween: Tween = create_tween()
	tween.tween_property(music_player, "volume_db", linear_to_db(music_volume), fade_in)


func stop_music(fade_out: float = 0.5) -> void:
	if not music_player.playing:
		return

	var tween: Tween = create_tween()
	tween.tween_property(music_player, "volume_db", -80.0, fade_out)
	await tween.finished
	music_player.stop()


func play_sfx(stream: AudioStream, volume_scale: float = 1.0) -> void:
	var player: AudioStreamPlayer = _get_available_sfx_player()
	if player:
		player.stream = stream
		player.volume_db = linear_to_db(sfx_volume * volume_scale)
		player.play()


func _get_available_sfx_player() -> AudioStreamPlayer:
	for player in sfx_players:
		if not player.playing:
			return player
	# 모든 플레이어가 사용 중이면 첫 번째 반환
	return sfx_players[0] if sfx_players.size() > 0 else null


func set_master_volume(value: float) -> void:
	master_volume = clampf(value, 0.0, 1.0)
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), linear_to_db(master_volume))


func set_music_volume(value: float) -> void:
	music_volume = clampf(value, 0.0, 1.0)
	if music_player:
		music_player.volume_db = linear_to_db(music_volume)


func set_sfx_volume(value: float) -> void:
	sfx_volume = clampf(value, 0.0, 1.0)


func play_ui_hover() -> void:
	_play_generated("ui_hover", 0.25)


func play_ui_click() -> void:
	_play_generated("ui_click", 0.35)


func play_card_pickup() -> void:
	_play_generated("card_pickup", 0.3)


func play_card_play() -> void:
	_play_generated("card_play", 0.45)


func play_summon() -> void:
	_play_generated("summon", 0.55)


func play_attack() -> void:
	_play_generated("attack", 0.7)


func play_death() -> void:
	_play_generated("death", 0.65)


func play_spell() -> void:
	_play_generated("spell", 0.6)


func _play_generated(key: String, volume_scale: float = 1.0) -> void:
	if not generated_sfx.has(key):
		return
	play_sfx(generated_sfx[key], volume_scale)


func _build_default_sfx() -> void:
	generated_sfx["ui_hover"] = _make_tone_stream(880.0, 0.035, 0.18)
	generated_sfx["ui_click"] = _make_tone_stream(650.0, 0.06, 0.22)
	generated_sfx["card_pickup"] = _make_chirp_stream(560.0, 690.0, 0.08, 0.25)
	generated_sfx["card_play"] = _make_chirp_stream(460.0, 760.0, 0.14, 0.3)
	generated_sfx["summon"] = _make_chirp_stream(420.0, 980.0, 0.2, 0.34)
	generated_sfx["attack"] = _make_tone_stream(140.0, 0.1, 0.5)
	generated_sfx["death"] = _make_chirp_stream(420.0, 120.0, 0.24, 0.36)
	generated_sfx["spell"] = _make_chirp_stream(320.0, 1040.0, 0.18, 0.3)


func _make_tone_stream(freq: float, duration: float, volume: float) -> AudioStreamWAV:
	return _make_chirp_stream(freq, freq, duration, volume)


func _make_chirp_stream(freq_start: float, freq_end: float, duration: float, volume: float) -> AudioStreamWAV:
	var sample_rate: int = 22050
	var total_samples: int = int(duration * float(sample_rate))
	var data: PackedByteArray = PackedByteArray()
	data.resize(total_samples * 2)

	for i in range(total_samples):
		var t: float = float(i) / float(sample_rate)
		var k: float = float(i) / maxf(1.0, float(total_samples - 1))
		var freq: float = lerpf(freq_start, freq_end, k)
		var env: float = minf(1.0, t * 40.0) * minf(1.0, (duration - t) * 16.0)
		var sample_float: float = sin(TAU * freq * t) * volume * env
		var sample: int = int(clampf(sample_float, -1.0, 1.0) * 32767.0)
		var lo: int = sample & 0xFF
		var hi: int = (sample >> 8) & 0xFF
		data[i * 2] = lo
		data[i * 2 + 1] = hi

	var stream: AudioStreamWAV = AudioStreamWAV.new()
	stream.format = AudioStreamWAV.FORMAT_16_BITS
	stream.mix_rate = sample_rate
	stream.stereo = false
	stream.data = data
	return stream
