extends Control

var button_type = null


	
	
func _on_play_pressed():
	$Fade_transition.show()
	$Fade_transition/Fade_timer.start()
	$Fade_transition/AnimationPlayer2.play("Fade in")
	await get_tree().create_timer(3).timeout
	get_tree().change_scene_to_file("res://Scenes/game.tscn")
	
func _on_option_pressed():
	$Fade_transition.show()
	$Fade_transition/Fade_timer.start()
	$Fade_transition/AnimationPlayer2.play("Fade in")
	await get_tree().create_timer(3).timeout
	get_tree().change_scene_to_file("res://Scenes/game.tscn")


func _on_quit_pressed():
	get_tree().quit() 		#To close the viewing window
		
	
