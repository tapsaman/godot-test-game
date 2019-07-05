extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.connect("timeout", self, "queue_free")
	$Timer.set_wait_time(1)
	$Timer.start()
