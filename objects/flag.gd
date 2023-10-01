extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite2D.play("wave")



func _on_body_entered(body):
	if body.is_in_group("aliens"):
		get_tree().change_scene_to_file("res://menu/victory.tscn")
