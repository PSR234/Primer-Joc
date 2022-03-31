extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(0, 600)
func _process(delta):
	position.y -= 1
