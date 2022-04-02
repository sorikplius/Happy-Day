extends CanvasLayer

func _ready():
	$Control/TextureRect/HBoxContainer/Life.text = "3"
	$Control/TextureRect/HBoxContainer/Coin.text = "0"
	
func update_gui(lives_left, coin):
	$Control/TextureRect/HBoxContainer/Life.text = str(lives_left)
	$Control/TextureRect/HBoxContainer/Coin.text = str(coin)
