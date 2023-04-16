extends Control
@onready var NewGame: TextureRect = $NewGameOv
@onready var Settings: TextureRect = $SettingsOv
@onready var FunMode: TextureRect = $FunmodeOv
@onready var Exit: TextureRect = $ExitOv
# Called when the node enters the scene tree for the first time.
func _ready():
	if MainMenuMusic.Mplay == true:
		pass
	else:
		MainMenuMusic._play_music()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_new_game_pressed():
	get_tree().change_scene_to_file("res://Scenes/OpeningScene.tscn")# Replace with function body.

func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel"):
		get_tree().quit(0)

func _on_exit_pressed():
	# Replace with function body.
	get_tree().quit(0)


func _on_setting_pressed():
	get_tree().change_scene_to_file("res://Scenes/SettingScreen.tscn")


func _on_new_game_mouse_entered():
	var TW = create_tween().set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
	TW.tween_property(NewGame, "scale", Vector2(0.62,0.62), 0.1)


func _on_new_game_mouse_exited():
	var TW = create_tween().set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
	TW.tween_property(NewGame, "scale",Vector2(0.6,0.61),0.1)


func _on_setting_mouse_entered():
	var TW = create_tween().set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
	TW.tween_property(Settings, "scale", Vector2(0.62,0.62), 0.1)


func _on_setting_mouse_exited():
	var TW = create_tween().set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
	TW.tween_property(Settings, "scale",Vector2(0.582,0.5) , 0.1)


func _on_fun_mode_mouse_entered():
	var TW = create_tween().set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
	TW.tween_property(FunMode, "scale", Vector2(0.62,0.62), 0.1)

func _on_fun_mode_mouse_exited():
	var TW = create_tween().set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
	TW.tween_property(FunMode, "scale",Vector2(0.576,0.448), 0.1)

func _on_exit_mouse_entered():
	var TW = create_tween().set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
	TW.tween_property(Exit, "scale", Vector2(0.62,0.62), 0.1)


func _on_exit_mouse_exited():
	var TW = create_tween().set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
	TW.tween_property(Exit, "scale",Vector2(0.572,0.5) , 0.1)








