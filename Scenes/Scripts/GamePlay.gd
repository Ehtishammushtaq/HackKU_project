extends Node2D
@onready var Rocket: TextureRect = $Rocket



# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _unhandled_input(event):
	var my_position = Rocket.position
	var TW = create_tween().set_trans(Tween.TRANS_CIRC).set_ease(Tween.EASE_IN_OUT)
	if event.is_action_pressed("ui_up"):
		TW.tween_property(Rocket, "position", Vector2(my_position.x, my_position.y-100), 0.01)
	elif event.is_action_pressed("ui_down"):
		TW.tween_property(Rocket, "position", Vector2(my_position.x, my_position.y+100), 0.01)
	elif event.is_action_pressed("ui_right"):
		TW.tween_property(Rocket, "position", Vector2(my_position.x+100, my_position.y), 0.01)
	elif event.is_action_pressed("ui_left"):
		TW.tween_property(Rocket, "position", Vector2(my_position.x-100, my_position.y), 0.01)
