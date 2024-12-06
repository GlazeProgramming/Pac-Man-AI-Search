extends Node2D
@onready var asp = $AudioStreamPlayer


func _ready():

	$AnimationPlayer.play("Fade in")
	await get_tree().create_timer(4).timeout
	$AnimationPlayer.play("Fade out")
	await get_tree().create_timer(1.5).timeout
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
	

