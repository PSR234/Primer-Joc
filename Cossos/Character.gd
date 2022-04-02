extends KinematicBody2D

var velocitat_base = 200
var velocitat = Vector2.ZERO
var direccio = Vector2.DOWN
var gravetat = Vector2.DOWN * 900
var velocitat_salt = -600
var salts_restants = 1
var corrent = false

func _physics_process(delta):
	velocitat += gravetat * delta
	#if position.x > 1024:
	#	position.x = 0
	#if position.x < 0:
	#	position.x = 1024
	
	
	if is_on_floor():
		velocitat.x = 0
		if Input.is_action_pressed("right"):
			velocitat += Vector2.RIGHT * velocitat_base

		if Input.is_action_pressed("left"):
			velocitat += Vector2.LEFT * velocitat_base

		if is_on_floor() == true:
			salts_restants = 1

		if Input.is_action_just_pressed("up") and salts_restants > 0:
			velocitat.y = velocitat_salt
			salts_restants -= 1
	
		if Input.is_action_pressed("sprint"):
			velocitat.x *= 2
			velocitat.y *= 1.3
			corrent = true
		else:
			corrent = false
	
		if Input.is_action_just_released("sprint"):
			corrent = false
		
	
	velocitat = move_and_slide(velocitat, Vector2.UP)
	anima(velocitat)

func anima(velocitat):
	if velocitat.x > 0:
		$AnimatedSprite.flip_h = false
	elif velocitat.x < 0:
		$AnimatedSprite.flip_h = true
	
	if is_on_floor() and not corrent and abs(velocitat.x) > 0.1:
		$AnimatedSprite.play("Walk")
	elif is_on_floor() and corrent and abs(velocitat.x) > 0.1:
		$AnimatedSprite.play("Run")
	elif abs(velocitat.x) < 0.1 and is_on_floor():
		$AnimatedSprite.play("Idle")
	
	if velocitat.y < 0:
		$AnimatedSprite.play("Jump 1")
	elif velocitat.y > 0:
		$AnimatedSprite.play("Jump 2")
	





func mor():
	get_tree().change_scene("res://Escenes/Pantalla_Cossos.tscn")




func _on_Death_body_entered(body):
	if "Personatge1" in body.name:
		mor()
