extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$Alien/HUD.set_coin($Coin)
