extends Node

onready var music = AudioStreamPlayer.new()

var music_tracks = {
	"main":"res://music/Running In The 90\'s.mp3",
	"title_track":"res://music/Miss You (Oliver Tree) (Sped Up Version).mp3",
}

var sound_effects = {
	"jump":"res://music/jump.wav",
}







var music_db = .6
var sound_db = 5

func change_music_db(value):
	music_db = linear2db(value)
	
func change_sound_db(value):
	sound_db = linear2db(value)

func _ready():
	music.stream = load(music_tracks["title_track"])
	add_child(music)
	music.play()
	
	
func play_sound_effect(sfx):
	var sound = AudioStreamPlayer.new()
	sound.stream = load(sound_effects[sfx])
	add_child(sound)
	sound.play()
	yield(sound,"finished")
	sound.queue_free()
