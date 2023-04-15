extends Node2D

@onready var Score: RichTextLabel = $Score
var WhiteCloud = preload("res://Scenes/WhiteCloudNode.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _unhandled_input(event):
	var my_string = str(Global.score)
	Score.clear()
	Score.append_text(my_string)
	


func _on_timer_timeout():
	spawn_white_clouds()

func spawn_white_clouds():
	var create_white_cloud=WhiteCloud.instantiate()
	add_child(create_white_cloud)
	create_white_cloud.position.y=randi()%400+150
	create_white_cloud.position.x=randi()%400+150
