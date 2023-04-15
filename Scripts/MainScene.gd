extends Node2D

@onready var Score: RichTextLabel = $Score
@onready var WhiteCloud = get_node("WhiteCloud/WhiteCloudSprite")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _unhandled_input(event):
	var my_string = str(Global.score)
	Score.clear()
	Score.append_text(my_string)
	


func _on_timer_timeout():
	spawn_circles()

func spawn_circles():
	var white_cloud = WhiteCloud.instance()
	add_child(white_cloud)
