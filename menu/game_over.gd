extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$AudioStreamPlayer2D.play()

	


func _on_menu_button_pressed():
	get_tree().change_scene_to_file("res://menu/menu.tscn")
