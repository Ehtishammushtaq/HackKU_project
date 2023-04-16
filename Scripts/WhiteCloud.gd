extends Node2D
@onready var WhiteCloud: CharacterBody2D = $WhiteCloud
@onready var Player: Node2D = $Player
var change = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	Global.WhiteCloudPosition = WhiteCloud.position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if WhiteCloud == null:
		pass
	else:
		change *= 1.01
		WhiteCloud.position.x -= 1 + change

func _on_area_2d_area_entered(area):
	Global.score+=1
	WhiteCloud.free()
	
