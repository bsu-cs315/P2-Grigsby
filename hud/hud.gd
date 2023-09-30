extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func _process(delta):
	pass
	
func set_coin(new_coin) -> void:
	new_coin.coin_collected.connect(_on_coin_collected)
	update_coin_label(new_coin.get_coins())

func _on_coin_collected(new_coins):
	update_coin_label(new_coins)
	
func update_coin_label(new_coins):
	$coin_label.text = str(new_coins)
