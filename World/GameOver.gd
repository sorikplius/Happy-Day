extends Control


func _on_RessetButton_pressed():
	Global.coins = 0
	Global.lives = 3
	get_tree().change_scene("res://World/Node2D.tscn")

