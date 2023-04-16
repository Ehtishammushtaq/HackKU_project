extends Control
@onready var NewGame: TextureRect = $NewGameOv

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_new_game_pressed():
	get_tree().change_scene_to_file("res://Scenes/OpeningScene.tscn")# Replace with function body.


func _on_exit_pressed():
	# Replace with function body.
	get_tree().quit(0)


func _on_setting_pressed():
	get_tree().change_scene_to_file("res://Scenes/SettingScreen.tscn")


func _on_new_game_ov_mouse_entered():
	print("new game enreredd")
	var TW = create_tween().set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
	TW.tween_property(NewGame, "scale", Vector2(0.65,0.65), 0.3)


func _on_new_game_ov_mouse_exited():
	print("new game exited")
	var TW = create_tween().set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
	TW.tween_property(NewGame, "scale",Vector2(0.6,0.61) , 0.3)


func _on_settings_ov_mouse_entered():
	pass


func _on_settings_ov_mouse_exited():
	pass # Replace with function body.


func _on_scores_ov_mouse_entered():
	pass # Replace with function body.


func _on_scores_ov_mouse_exited():
	pass # Replace with function body.


func _on_exit_ov_mouse_entered():
	pass # Replace with function body.


func _on_exit_ov_mouse_exited():
	pass # Replace with function body.
