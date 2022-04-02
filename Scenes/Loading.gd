extends Control

var yellow_bunny = 0
var purple_bunny = 0
	
	
func _on_Yellowbunny_pressed():
	yellow_bunny += 1
	get_tree().call_group("Player", "bunny_pik", yellow_bunny, purple_bunny)
	get_tree().change_scene("res://World/Node2D.tscn")

func _on_Purplebunny_pressed():
	purple_bunny += 1
	get_tree().call_group("Player", "bunny_pik", yellow_bunny, purple_bunny)
	get_tree().change_scene("res://World/Node2D.tscn")
