extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(_delta):
	var tween = get_tree().create_tween()
	tween.tween_property($Title, "position", Vector2(396,171), 1)
	
func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://world/world.tscn")

