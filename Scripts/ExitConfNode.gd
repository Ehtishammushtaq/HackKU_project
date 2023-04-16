extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel"):
		get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")


func _on_yes_button_pressed():
	get_tree().quit(0)


func _on_no_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")
