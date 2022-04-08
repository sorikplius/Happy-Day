extends Control

func _ready():
	$CenterContainer/VBoxContainer/HBoxContainer/Score.text = str(Global.coins)

func _on_RessetButton_pressed():
	Global.coins = 0
	Global.lives = 3
	Global.yellow = false
	Global.purple = false
	get_tree().change_scene("res://Scenes/Loading.tscn")
