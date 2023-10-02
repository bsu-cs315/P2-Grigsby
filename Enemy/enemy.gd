extends CharacterBody2D

var location := position.x
var start_location := Vector2(579, 382)

func _ready():
	$Timer3.start()
func move_left():
	velocity.x = -100
	$AnimatedSprite2D.play("walk")
func move_right():
	velocity.x = 100
	$AnimatedSprite2D.play("walk")
func _physics_process(_delta):
	if velocity.x > 0:
		$AnimatedSprite2D.scale.x = -1
	elif velocity.x < 0:
		$AnimatedSprite2D.scale.x = 1
	move_and_slide()

func _on_timer_timeout():
	move_left()
	$Timer2.start()


func _on_timer_2_timeout():
	move_right()
	$Timer.start()

func _on_timer_3_timeout():
	move_left()
	$Timer.start()


func _on_area_2d_body_entered(body):
	if body.is_in_group("aliens"):
		get_tree().change_scene_to_file("res://menu/game_over.tscn")
