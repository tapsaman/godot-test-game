extends RigidBody2D

const PIPE_TYPE = constants.PIPE_TYPE

export (PIPE_TYPE) var type = PIPE_TYPE.red

var blueTex = preload("res://art/ball02.png")
var greenTex = preload("res://art/ball03.png")





func _ready():
	setTypeTextures()
	
func setType(_type):
	type =_type
	
	if (type == "blue"):
		$Sprite.set_texture(blueTex)
	elif (type == "green"):
		$Sprite.set_texture(greenTex)
		
func setTypeTextures():
	match type:
		PIPE_TYPE.blue:
			$Sprite.set_texture(blueTex)
		PIPE_TYPE.green:
			$Sprite.set_texture(greenTex)

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	
func collided():
	queue_free()
	return type
