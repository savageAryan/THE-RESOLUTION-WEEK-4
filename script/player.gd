extends CharacterBody2D

const speed = 100
var current_dir = 'none'
func _ready() -> void:
	play_animation("front_idel")

func _physics_process(delta: float) -> void:
	player_movement(delta)
	
func player_movement(delta):
	if Input.is_action_pressed('right'):
		current_dir = 'right'
		play_animation(1)
		velocity.x = speed
		velocity.y = 0
	elif Input.is_action_pressed('left'):
		play_animation(1)
		current_dir = 'left'
		velocity.x = -speed
		velocity.y = 0
	elif Input.is_action_pressed('down'):
		play_animation(1)
		current_dir = 'down'
		velocity.x = 0
		velocity.y = speed
	elif Input.is_action_pressed('up'):
		play_animation(1)
		current_dir = "up"
		velocity.x = 0
		velocity.y = -speed
		
	else:
		play_animation(0)
		velocity.x = 0
		velocity.y = 0
		
	move_and_slide()
	
func play_animation(movement):
	var dir = current_dir
	var animation = $AnimatedSprite2D
	
	if dir == "right":
		animation.flip_h = true
		if movement == 1:
			animation.play("side_walk")
			
		elif movement == 0:
			animation.play("side_idel")
			
	if dir == "left":
		animation.flip_h = false
		if movement == 1:
			animation.play("side_walk")
			
		elif movement == 0:
			animation.play("side_idel")
			
	if dir == "down":
		animation.flip_h = true
		if movement == 1:
			animation.play("front_walk")
			
		elif movement == 0:
			animation.play("front_idel")
			
	if dir == "up":
		animation.flip_h = true
		if movement == 1:
			animation.play("back_walk")
			
		elif movement == 0:
			animation.play("back_idel")
