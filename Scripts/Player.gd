extends Node2D
@onready var Character: CharacterBody2D = $Character
@onready var Circle: Sprite2D = $Circle
var is_held = false
var ychange=20

# Called when the node enters the scene tree for the first time.
func _ready():
	Character.position = Vector2(100,600)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var my_position = Character.position
	var TW = create_tween().set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
	if Input.is_action_pressed("ui_up"):
		TW.tween_property(Character, "position", Vector2(my_position.x, my_position.y-ychange), 0.01)
		TW.tween_property(Character, "position", Vector2(my_position.x+1, my_position.y), 0.01)
	elif Input.is_action_pressed("ui_down"):
		TW.tween_property(Character, "position", Vector2(my_position.x, my_position.y+ychange), 0.01)
		TW.tween_property(Character, "position", Vector2(my_position.x+1, my_position.y), 0.01)
	elif Input.is_action_pressed("ui_right"):
		TW.tween_property(Character, "position", Vector2(my_position.x+5, my_position.y), 0.01)
	else:
		TW.parallel().tween_property(Character, "position", Vector2(my_position.x+1, my_position.y), 0.01)
