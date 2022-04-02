extends AnimatedSprite




func _on_Player_animate_purple(motion):
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
