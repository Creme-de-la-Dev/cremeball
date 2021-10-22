extends Sprite

func _ready():
	pass # Replace with function body.

func process(delta):
	if Input.button_is_pressed("ui_right"):
		position.x += 1
