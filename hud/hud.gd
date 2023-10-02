extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func set_alien(new_alien) -> void:
	new_alien.coin_collected.connect(_on_coin_collected)
	update_coin_label(new_alien.get_coins())

func _on_coin_collected(new_coins):
	update_coin_label(new_coins)
	
func update_coin_label(new_coins):
	$coin_label.text = str(new_coins)
