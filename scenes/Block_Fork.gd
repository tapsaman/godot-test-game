extends Node2D

var rotateBy = 0
var speed = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	print("123")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if rotateBy > 0:
		var r = get_rotation()
		var d = min(rotateBy, speed * delta)
		r += d
		rotateBy -= d
		set_rotation(r)

func _on_ClickArea2D_input_event(viewport, event, shape_idx):
	print("clickarea")
	
	if event.is_action_released("left_mouse"):
		rotateBy += PI / 2
		
func _input_event(viewport, event, shape_idx):
	print("aaaaaa")


func _on_ClickArea2D_mouse_entered():
	print("o")
