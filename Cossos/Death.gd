extends Area2D

func _ready():
	position = Vector2(0, 600)

func _process(delta):
	if position.y > -2875:
		position.y -= 100 * delta
