extends Node2D

func _ready():
	$Personatge1.velocitat_base = 0
	$Personatge1.velocitat_salt = 0
	$Death.speed = 0
	$Easy.show()
	$Medium.show()
	$Hard.show()




func _on_Easy_pressed():
	$Personatge1.velocitat_base = 200
	$Personatge1.velocitat_salt = -600
	$Death.speed = 50
	$Easy.hide()
	$Medium.hide()
	$Hard.hide()

func _on_Medium_pressed():
	$Personatge1.velocitat_base = 200
	$Personatge1.velocitat_salt = -600
	$Death.speed = 100
	$Easy.hide()
	$Medium.hide()
	$Hard.hide()

func _on_Hard_pressed():
	$Personatge1.velocitat_base = 200
	$Personatge1.velocitat_salt = -600
	$Death.speed = 150
	$Easy.hide()
	$Medium.hide()
	$Hard.hide()
