extends Node2D
@onready var BlackCloud: CharacterBody2D = $BlackCloud
var change = 5
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if BlackCloud == null:
		pass
	else:
		change *= 1.01
		BlackCloud.position.x -= 1 + change
		
func _on_area_2d_area_entered(area):
	Global.health-=1
	WhiteCloudDeath.bdeath_sound()
	BlackCloud.free()
	
