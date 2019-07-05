extends "res://scenes/Level.gd"

export (PackedScene) var Ball
const PIPE_TYPE = constants.PIPE_TYPE

#	output, wait until start, ball type, count, frequency
var level
var levelProgress
var step
var wait
var done = false

func _ready():
	level = [
		[$BallOutput01, 0, PIPE_TYPE.green, 3, 0.5],
		[$BallOutput02, 4, PIPE_TYPE.blue, 4, 0.3]
	]
	levelProgress = 0
	step = level[levelProgress]
	wait = step[1]
	pass

func createBall(output, _type):
	var ball = Ball.instance()
	ball.type = _type	
	ball.position = output.position
	add_child(ball)

func _process(delta):
	
	if done:
		return
	
	if wait > 0:
		wait -= delta
	else:
		
		createBall(step[0], step[2])
		levelProgress += 1
		
		if level.size() == levelProgress:
			done = true
		else:
			step = level[levelProgress]
			wait = step[1]