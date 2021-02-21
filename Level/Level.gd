extends Spatial

var player1_score = 0
var player2_score = 0

export var target_score = 3


func _on_GoalDetector_body_entered(body, player_id):
	print('Player '+str(player_id)+' has score a goal!')
	get_tree().call_group('GamePieces', 'freeze', player_id)
	update_score(player_id)
	$ResetTimer.start()
	$AirHorn.play()


func _on_Timer_timeout():
	get_tree().call_group('GamePieces', 'reset')


func update_score(player_id):
	var new_score
	
	match player_id:
		1:
			player1_score += 1
			new_score = player1_score
		2:
			player2_score += 1
			new_score = player2_score
	
	$GUI.update_score(player_id, new_score)
	check_game_over(player_id, new_score)


func check_game_over(player_id, score):
	if score == target_score:
		$ResetTimer.queue_free()
		$GUI.game_over(player_id)
