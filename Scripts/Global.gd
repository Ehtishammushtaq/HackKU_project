extends Node2D
var score=0
var WhiteCloudPosition
var health = 3
var TopWallTouched=false
var BottomWallTouched=false
var RightWallTouched=false
var GameType = 1
@onready var MainMenuMusic: AudioStreamPlayer2D = $MainMenuMusic
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
