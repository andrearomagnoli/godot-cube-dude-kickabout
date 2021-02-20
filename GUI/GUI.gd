extends CanvasLayer


func update_score(player_id, score):
	var score_label = get_node("CenterContainer/NinePatchRect/HBoxContainer/ScorePlayer"+str(player_id))
	score_label.text = str(score)
