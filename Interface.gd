extends CanvasLayer


signal start_game

func play_message(text):
	$Message.text = text
	$Message.show()


func game_over():
	play_message("Game Over")
	yield($Timer, "timeout")
	$Button.show()
	$Message.text = "JURASSIC JUMP"
	$Message.show()

func _on_Timer_timeout():
	$Message.hide()
	


func _on_Button_pressed():
	$Button.hide()
	emit_signal("start_game")
