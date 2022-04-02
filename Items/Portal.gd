extends Node2D

var scene_level = 1

func _on_Area2D_body_entered(body):
	get_tree().call_group("Gamestate", "next_level")
