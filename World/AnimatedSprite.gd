extends AnimatedSprite


func _ready():
	var new_signal = get_parent()
	new_signal.connect("yellow", self, "_on_Player_yellow")

func _on_Player_yellow(motion):
	if motion.y < 0 and motion.x == 0:
		play("jump")
	elif motion.x > 0:
		play("walk")
		flip_h = false
	elif motion.x < 0:
		play("walk")
		flip_h = true
	else:
		play("idle")



