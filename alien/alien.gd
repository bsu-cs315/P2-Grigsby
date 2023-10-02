extends CharacterBody2D

signal coin_collected(new_coins)

const JUMP_VELOCITY = -700.0
const SPEED = 300.0

@onready var _animated_sprite := $AnimatedSprite2D

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

var coins := 0
var original_coins := 0

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	var animation_name := "walk" if velocity.x != 0 else "idle"
	_animated_sprite.play(animation_name)
	
	if velocity.y != 0:
		_animated_sprite.play("jump")
	
	if velocity.x > 0:
		_animated_sprite.scale.x = 1
	elif velocity.x < 0:
		_animated_sprite.scale.x = -1

	move_and_slide()
	
	if coins != original_coins:
		coin_collected.emit(coins)
	
	if position.y > 550:
		get_tree().change_scene_to_file("res://menu/game_over.tscn")
		
func get_coins():
	return coins
