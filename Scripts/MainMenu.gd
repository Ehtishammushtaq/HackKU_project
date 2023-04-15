extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_new_game_pressed():
	get_tree().change_scene_to_file("res://Scenes/MainScene.tscn")# Replace with function body.


func _on_exit_pressed():
	# Replace with function body.
	get_tree().quit(0)


func _on_setting_pressed():
	get_tree().change_scene_to_file("res://Scenes/SettingScreen.tscn")
