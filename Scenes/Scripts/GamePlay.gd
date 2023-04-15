extends Node2D
@onready var Rocket: TextureRect = $Rocket
@onready var Circle: Sprite2D = $Circle
var is_held = false
var change=10
# Called when the node enters the scene tree for the first time.
func _ready():
	Rocket.position = Vector2(100,850)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var my_position = Rocket.position
	var TW = create_tween().set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
	if Input.is_action_pressed("ui_up"):
		TW.tween_property(Rocket, "position", Vector2(my_position.x, my_position.y-change), 0.01)
	elif Input.is_action_pressed("ui_down"):
		TW.tween_property(Rocket, "position", Vector2(my_position.x, my_position.y+change), 0.01)
	elif Input.is_action_pressed("ui_right"):
		TW.parallel().tween_property(Rocket, "position", Vector2(my_position.x+change, my_position.y), 0.01)
	elif Input.is_action_pressed("ui_left"):
		TW.parallel().tween_property(Rocket, "position", Vector2(my_position.x-change, my_position.y), 0.01)
	else:
		TW.parallel().tween_property(Rocket, "position", Vector2(100, 850), 1)

		


func _on_area_2d_area_entered(area):
	Circle.free()
