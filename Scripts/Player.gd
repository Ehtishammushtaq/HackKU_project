extends Node2D

@onready var Character: CharacterBody2D = $Character
@onready var Circle: Sprite2D = $Circle
@onready var animated_sprite = $Character/AnimatedSprite2D

var is_held = false
var ychange=30
var xchange=20
	
# Called when the node enters the scene tree for the first time.

func _ready():
	Character.position = Vector2(100,600)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var my_position = Character.position
	var TW = create_tween().set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
	TW.tween_property(Character, "position", Vector2(my_position.x+xchange, my_position.y), 0.01)
	animated_sprite.play("IdleNoInput")

	if Input.is_action_pressed("ui_up"):
		animated_sprite.play("GoingUp")
		if Global.TopWallTouched == false:
			TW.tween_property(Character, "position", Vector2(my_position.x, my_position.y-ychange), 0.01)
	elif Input.is_action_pressed("ui_down"):
		animated_sprite.play("GoingDown")
		if Global.BottomWallTouched== false:
			TW.tween_property(Character, "position", Vector2(my_position.x, my_position.y+ychange), 0.01)
	elif Input.is_action_pressed("ui_right"):
		TW.tween_property(Character, "position", Vector2(my_position.x+xchange, my_position.y), 0.01)
	elif Input.is_action_pressed("ui_left"):
		var a = clamp((my_position.x-xchange), 10, 1700 )
		if a==10:
			pass
		else:
			TW.tween_property(Character, "position", Vector2(my_position.x-ychange, my_position.y), 0.01)
	else:
		TW.parallel().tween_property(Character, "position", Vector2(my_position.x+xchange/10, my_position.y), 0.01)
