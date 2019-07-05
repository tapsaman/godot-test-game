extends Node2D

const PIPE_TYPE = constants.PIPE_TYPE

export (PIPE_TYPE) var type = PIPE_TYPE.green
signal pipedRight

var blueBackTex = preload("res://art/pipe02_back.png")
var blueFrontTex = preload("res://art/pipe02_front.png")
var greenBackTex = preload("res://art/pipe03_back.png")
var greenFrontTex = preload("res://art/pipe03_front.png")

func _ready():
	setTypeTextures()
	
func setTypeTextures():
	match type:
		PIPE_TYPE.blue:
			$BackSprite.set_texture(blueBackTex)
			$FrontSprite.set_texture(blueFrontTex)
		PIPE_TYPE.green:
			$BackSprite.set_texture(greenBackTex)
			$FrontSprite.set_texture(greenFrontTex)

func _on_BottomArea2D_body_entered(body):
	body.collided()
	if (body.type == type):
		print("score +1")
		emit_signal("pipedRight")
