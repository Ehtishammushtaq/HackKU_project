extends Node2D
@onready var Music: AudioStreamPlayer2D = $AudioStreamPlayer2D

var Mplay = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _play_music():
	Mplay = true
	Music.play()
	
func _stop_music():
	Mplay = false
	Music.stop()
