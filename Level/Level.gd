extends Spatial


func _on_GoalDetector_body_entered(body, player_score_id):
	print('Player '+str(player_score_id)+' has score a goal!')
	get_tree().call_group('GamePieces', 'freeze')
	$ResetTimer.start()


func _on_Timer_timeout():
	get_tree().call_group('GamePieces', 'reset')
