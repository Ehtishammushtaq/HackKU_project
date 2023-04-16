extends Node2D
var ticks = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	if MainMenuMusic.Mplay == true:
			MainMenuMusic._stop_music()
			WhiteCloudDeath.opening_sound()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	ticks+=1
	if ticks ==20:
		$Space.hide()
	elif ticks == 40:
		$Space.show()
		ticks=0

func _unhandled_input(event):
	if event.is_action_pressed("ui_accept"):
		get_tree().change_scene_to_file("res://Scenes/MainScene.tscn")
	elif event.is_action_pressed("ui_cancel"):
		get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")



func _on_tree_exited():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)



func _on_tree_entered():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
