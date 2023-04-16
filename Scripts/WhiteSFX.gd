extends Node2D

@onready var Whoosh : AudioStreamPlayer2D = $WhiteDeath
@onready var Whoosh2 : AudioStreamPlayer2D = $BlackDeath
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func death_sound():
	Whoosh.play()

func bdeath_sound():
	Whoosh2.play()
