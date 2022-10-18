extends Node

onready var music = AudioStreamPlayer.new()

var music_tracks = {
	"main": "res://Scripts/Running In The 90\'s.mp3"
	
}









var music_db = 1
var sound_db = 1

func change_music_db(value):
	music_db = linear2db(value)
	
func change_sound_db(value):
	sound_db = linear2db(value)

func _ready():
	music.stream = load(music_tracks["main"])
	add_child(music)
	music.play()
