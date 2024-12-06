extends Node

var volume = -10
# Called when the node enters the scene tree for the first time.
func _ready():
	$Fade_transition.show()
	$Fade_transition/AnimationPlayer.play("Fade out")
	AudioServer.set_bus_volume_db(0, volume)

