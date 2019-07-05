extends CanvasLayer

func show_message(text):
	$MessageLabel.text = text
	$MessageLabel.show()

func show_game_over():
	show_message("Game Over")
	yield($MessageTimer, "timeout")
	$StartButton.show()
	$MessageLabel.text = "Dodge the Creeps!"
	$MessageLabel.show()
	#yield(get_tree().create_timer(1), 'timeout')
	
	
func update_score(score):
	$ScoreLabel.text = str(score)

func _on_StartButton_pressed():
	$StartButton.hide()
	emit_signal("start_game")

func _on_MessageTimer_timeout():
	$MessageLabel.hide()