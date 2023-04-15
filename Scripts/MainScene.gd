extends Node2D

@onready var Score: RichTextLabel = $Score
var WhiteCloud = preload("res://Scenes/WhiteCloudNode.tscn")
var BlackCloud = preload("res://Scenes/BlackCloudNode.tscn")
var tracker = 0
var randomChooser=0
# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel"):
		get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")
	var my_string = str(Global.score)
	Score.clear()
	Score.append_text(my_string)
	
func _on_timer_timeout():
	spawn_white_clouds()
	await get_tree().create_timer(0.2).timeout
	spawn_black_clouds(tracker)
	
func spawn_white_clouds():
	tracker+=1
	var create_white_cloud=WhiteCloud.instantiate()
	add_child(create_white_cloud)
	create_white_cloud.position.y=randi()%400+150
	create_white_cloud.position.x = 1920

func spawn_black_clouds(variable):
	randomChooser = randi()%2
	if randomChooser == 0:
		if tracker == 4:
			tracker=0
			if randi_range(0, 2) % 2 != 0:
				pass
		var create_black_cloud=BlackCloud.instantiate()
		add_child(create_black_cloud)
		create_black_cloud.position.y=randi()%400+150
		create_black_cloud.position.x = 1920
	else:
		if tracker == 4:
			tracker=0
			if randi_range(0, 2) % 2 != 0:
				pass
		var create_black_cloud=BlackCloud.instantiate()
		add_child(create_black_cloud)
		create_black_cloud.position.y=randi()%700+150
		create_black_cloud.position.x = 1920
