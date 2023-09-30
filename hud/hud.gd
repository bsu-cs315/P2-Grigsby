extends Control

var coin : Coin
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func _process(delta):
	pass
	
func setCoin(new_coin) -> void:
	new_coin.coin_collected.connect(_on_coin_collected)
	$coin_label.text = "0"

func _on_coin_collected(new_coins):
	update_coin_label(new_coins)
	
func update_coin_label(new_coins):
	$coin_label.text = str(new_coins)
