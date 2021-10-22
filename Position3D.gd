extends Position3D

func _ready():
	pass 

func _process(delta):
	var position = Vector3(0,0,0)
	var velocity = Vector3()
	
	if Input.is_action_pressed("ui_right"):
		velocity.x = 0.1
	if Input.is_action_pressed("ui_left"):
		velocity.x = -0.1
	if Input.is_action_pressed("ui_up"):
		velocity.y = 0.1
	if Input.is_action_pressed("ui_down"):
		velocity.y = -0.1
	
	if velocity.x < 0:
		$AnimatedSprite3D.flip_h = true
		$AnimatedSprite3D.animation = "walk"
		$AnimatedSprite3D.play()
	elif velocity.x > 0:
		$AnimatedSprite3D.flip_h = false
		$AnimatedSprite3D.animation = "walk"
		$AnimatedSprite3D.play()
	elif velocity.x == 0:
		$AnimatedSprite3D.animation = "default"

	position = velocity
	translation += position
	print(position)
