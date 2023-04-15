extends Node2D

@onready var Score: RichTextLabel = $Score
var WhiteCloud = preload("res://Scenes/WhiteCloudNode.tscn")
var BlackCloud = preload("res://Scenes/BlackCloudNode.tscn")
var randomChooser=0
# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var my_string = str(Global.score)
	Score.clear()
	Score.append_text(my_string)
	
func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel"):
		get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")
	
func _on_timer_timeout():
	var random = randf_range(0, 2)
	spawn_white_clouds()
	await get_tree().create_timer(random).timeout
	spawn_white_clouds()
	random = randf_range(0, 2)
	await get_tree().create_timer(random).timeout
	spawn_black_clouds()
	random = randf_range(0, 2)
	await get_tree().create_timer(random).timeout
	spawn_white_clouds()
	random = randf_range(0, 2)
	await get_tree().create_timer(random).timeout
	spawn_white_clouds()
	random = randf_range(0, 2)
	await get_tree().create_timer(random).timeout
	spawn_black_clouds()
	
func spawn_white_clouds():
	var create_white_cloud=WhiteCloud.instantiate()
	add_child(create_white_cloud)
	create_white_cloud.position.y=randi()%700+40
	create_white_cloud.position.x = 1950

func spawn_black_clouds():
	randomChooser = randi()%2
	if randomChooser == 0:
		if randi_range(0, 2) % 2 != 0:
			pass
		var create_black_cloud=BlackCloud.instantiate()
		add_child(create_black_cloud)
		create_black_cloud.position.y=randi()%600+20
		create_black_cloud.position.x = 1950
