extends Node2D
@onready var OneHP : Sprite2D = $OneHP

@onready var TwoHP : Sprite2D = $TwoHP

@onready var ThreeHP : Sprite2D = $ThreeHP

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.health==2 and ThreeHP != null:
		var a = self.get_node("ThreeHP")
		a.queue_free()
	elif Global.health==1 and TwoHP != null:
		var a = self.get_node("TwoHP")
		a.queue_free()
	elif Global.health==0 and OneHP != null:
		var a = self.get_node("OneHP")
		get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")
		a.queue_free()
		
