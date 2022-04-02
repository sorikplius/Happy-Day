extends KinematicBody2D

var motion = Vector2(0,0)
const SPEED = 1000
const GRAVITY = 140
const UP = Vector2(0,-1)
const JUMP_SPEED = 3500
const BOOST_MULTIPLAYER = 1.5
const WORLD_LIMIT = 5000
signal yellow


func _ready():
	add_to_group("Player")

func _physics_process(delta):
	applay_gravity()
	jump()
	move()
	animate()
	move_and_slide(motion, UP)

func applay_gravity():
	
	if position.y > WORLD_LIMIT:
		get_tree().call_group("Gamestate", "end_game")
	if is_on_floor() and motion.y > 0:
		motion.y = 0
	elif is_on_ceiling():
		motion.y = 5
	else:
		motion.y += GRAVITY
func jump():
	if Input.is_action_pressed("jump") and is_on_floor():
		motion.y = -JUMP_SPEED
		$Jump.play()

func move():
	if Input.is_action_pressed("left") and not Input.is_action_pressed("right"):
		motion.x = -SPEED
	elif Input.is_action_pressed("right")and not Input.is_action_pressed("left"):
		motion.x = SPEED
	else:
		motion.x = 0

func animate():
		emit_signal("yellow", motion)
	
func hurts():
		position.y -= 1
		yield(get_tree(), "idle_frame")
		motion.y = -JUMP_SPEED
		$Hurt.play()
		
func boost():
	position.y -= 1
	yield(get_tree(), "idle_frame")
	motion.y = -JUMP_SPEED * BOOST_MULTIPLAYER
