extends Node2D

var rotateBy = 0
var speed = 6

func _ready():
	print("Block_Test ready !!!")

func _process(delta):
	if rotateBy > 0:
		var r = get_rotation()
		var d = min(rotateBy, speed * delta)
		r += d
		rotateBy -= d
		set_rotation(r)

func _on_Area2D_input_event(viewport, event, shape_idx):
	if event.is_action_released("left_mouse"):
		print("Block_Test click ###")
		rotateBy += PI / 2

