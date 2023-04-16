extends Control

@onready var Sounds: TextureRect = $SoundsOv
@onready var Controls: TextureRect = $ControlsOv
@onready var Credits: TextureRect = $CreditsOv
@onready var Back: TextureRect = $BackOv

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_back_pressed():
	get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")


func _on_credits_pressed():
	get_tree().change_scene_to_file("res://Scenes/EndCredits.tscn")
	
func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel"):
		get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")


func _on_credits_mouse_entered():
	var TW = create_tween().set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
	TW.tween_property(Credits, "scale", Vector2(1.1,1.1), 0.1)


func _on_credits_mouse_exited():
	var TW = create_tween().set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
	TW.tween_property(Credits, "scale", Vector2(1,1), 0.1)


func _on_control_mouse_entered():
	var TW = create_tween().set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
	TW.tween_property(Controls, "scale", Vector2(1.1,1.1), 0.1)


func _on_control_mouse_exited():
	var TW = create_tween().set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
	TW.tween_property(Controls, "scale", Vector2(1,1), 0.1)


func _on_back_mouse_entered():
	var TW = create_tween().set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
	TW.tween_property(Back, "scale", Vector2(1.1,1.1), 0.1)


func _on_back_mouse_exited():
	var TW = create_tween().set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
	TW.tween_property(Back, "scale", Vector2(1,1), 0.1)


func _on_sound_mouse_entered():
	var TW = create_tween().set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
	TW.tween_property(Sounds, "scale", Vector2(1.1,1.1), 0.1)


func _on_sound_mouse_exited():
	var TW = create_tween().set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
	TW.tween_property(Sounds, "scale", Vector2(1,1), 0.1)


func _on_control_pressed():
	get_tree().change_scene_to_file("res://Scenes/ControlScreenNode.tscn")
