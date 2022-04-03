extends Node2D


func _ready():
	$Message.show()
	$Start.show()



func _on_Start_pressed():
	get_tree().change_scene("res://Escenes/Pantalla_Inicial.tscn")

