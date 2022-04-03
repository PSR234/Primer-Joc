extends Area2D

var speed = 0

func _ready():
	position = Vector2(0, 600)

func _process(delta):
	if position.y > -2875:
		position.y -= speed * delta
