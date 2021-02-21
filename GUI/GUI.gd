extends CanvasLayer


func update_score(player_id, score):
	var score_label = get_node("CenterContainer/NinePatchRect/HBoxContainer/ScorePlayer"+str(player_id))
	score_label.text = str(score)


func _on_Button_pressed():
	get_tree().reload_current_scene()


func game_over(player_id):
	$Popup/VBoxContainer/Label.text = 'Player %s Wins' % str(player_id)
	$Popup.show()
