extends Node2D

var platform_scene = preload("res://grass.tscn")

func _ready():
	create_platform()
	
func create_platform():
	var y_position = 650
	var x_positions = [-100, 100, 200]
		
	for i in range(40):
		var x_position = x_positions[i % 3]
		var platform_instance = platform_scene.instantiate()
		add_child(platform_instance)
		platform_instance.position = Vector2(x_position, y_position)
		
		y_position -= 200
		
