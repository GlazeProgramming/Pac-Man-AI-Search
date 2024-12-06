extends CanvasLayer

class_name UI

@onready var center_container = $MarginContainer/CenterContainer
@onready var life_count_label = %LifeCountLabel
@onready var game_score_label = %GameScoreLabel
@onready var game_label = %GameLabel


func set_lifes(lifes):
	life_count_label.text = "%d up" % lifes
	if lifes == 0: 
		game_lost()

func set_score(score):
	game_score_label.text = "SCORE: %d" % score

func game_lost():
	game_label.text = "Game Over"
	center_container.show()

func game_won():
	game_label.text = "Game won"
	center_container.show()
	
func _on_try_again_button_pressed():
	get_tree().reload_current_scene()

func _on_main_menu_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
