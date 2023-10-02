extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_body_entered(body):
	if body.is_in_group("aliens"):
		body.coins += 1
		
		var audio_stream_player := AudioStreamPlayer.new()
		audio_stream_player.stream = load("res://objects/keysound.wav")
		get_parent().add_child(audio_stream_player)
		audio_stream_player.play()
		audio_stream_player.finished.connect(func():
			audio_stream_player.queue_free()
		)
		queue_free()
