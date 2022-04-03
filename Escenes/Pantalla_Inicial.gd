extends Node2D


func _ready():
	$Easy.hide()
	$Medium.hide()
	$Hard.hide()
	$Message.show()
	$Start.show()



func _on_Start_pressed():
	$Easy.show()
	$Medium.show()
	$Hard.show()
	$Message.hide()
	$Start.hide()


func _on_Easy_pressed():
	$Area2D.speed = 50
	get_tree().change_scene("res://Escenes/Pantalla_Cossos.tscn")


func _on_Medium_pressed():
	$Area2D.speed = 100
	get_tree().change_scene("res://Escenes/Pantalla_Cossos.tscn")


func _on_Hard_pressed():
	$Area2D.speed = 150
	get_tree().change_scene("res://Escenes/Pantalla_Cossos.tscn")
