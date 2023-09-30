extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	$key.visible = false
	
func set_alien(alien):
	alien.key_collected.connect(_on_key_collected)
	
func _process(delta):
	pass
	
func _on_key_collected(new_keys):
	_update_key_label()
	
func _update_key_label():
	$key.visible = true
