extends Node2D

#var lives = 3
#var coin = 0
var target_number_of_coins = 10
onready var player = $Player

func _ready():
	add_to_group("Gamestate")
	update_gui()
	
func update_gui():
	get_tree().call_group("GUI", "update_gui", Global.lives, Global.coins)

func hurt():
	Global.lives = Global.lives - 1
	player.hurts()
	update_gui()
	if Global.lives < 0:
		end_game()

func coins_up():
	Global.coins = Global.coins + 1
	update_gui()
	var multiple_coins = (Global.coins % target_number_of_coins) == 0
	if multiple_coins:
		life_up()
		
func life_up():
	Global.lives = Global.lives + 1
	update_gui()

func win_game():
	get_tree().change_scene("res://World/GameWin.tscn")

func next_level():
	var scene_level = get_tree().current_scene.name
	scene_level = str(scene_level)
	if scene_level == str("Level1"):
		get_tree().change_scene("res://World/Level2.tscn")
	elif scene_level == str("Level2"):
		get_tree().change_scene("res://Level3.tscn")
	else:
		win_game()

func end_game():
	get_tree().change_scene("res://World/GameOver.tscn")
