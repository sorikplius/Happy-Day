extends Control



func _on_Yellowbunny_pressed():
	Global.yellow = true
	get_tree().change_scene("res://World/Node2D.tscn")

func _on_Purplebunny_pressed():
	Global.purple = true
	get_tree().change_scene("res://World/Node2D.tscn")
