extends Node

var score = 0
var ballsGone = 0

# === Has to be defined when inherited === #
var ballsMax
# ======================================== #

func _ready():
	new_game()

func new_game():
	score = 0
	$HUD.update_score(score)
	$HUD.show_message("Get Ready")
	
func won_game():
	$HUD.show_message("Congrats!!!!!")

func _on_Pipe_pipedRight():
	score += 1
	$HUD.update_score(score)
	ballGone()
	
func _on_Pipe_pipedWrong():
	ballGone()

func ballGone():
	ballsGone += 1
	if ballsGone == ballsMax:
		won_game()