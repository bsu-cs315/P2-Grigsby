extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite2D.play("dance")
	$AudioStreamPlayer2D.play()
	$Timer.start()


func _on_menu_button_pressed():
	get_tree().change_scene_to_file("res://menu/menu.tscn")


func _on_timer_timeout():
	$Label.modulate = Color(randf(), randf(), randf())
