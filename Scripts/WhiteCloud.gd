extends Node2D
@onready var WhiteCloud: CharacterBody2D = $WhiteCloud
@onready var Player: Node2D = $Player
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_area_entered(area):
	print("cloud toucuhed")
	Global.score+=1
	WhiteCloud.free()
	
	
