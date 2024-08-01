extends Node2D
var ball_direction
# points
var player1_score = 0
var player2_score = 0
	
func _on_goal_left_area_entered(area):
	player2_score += 1
	%PlayerPoints2Label.text = str(player2_score)
	ball_direction = "right"
	%ResetTimer.start()

func _on_goal_right_area_entered(area):
	player1_score += 1
	%PlayerPoints1Label.text = str(player1_score)
	ball_direction = "left"
	%ResetTimer.start()

func _on_reset_timer_timeout():
	%Ball.reset_ball(ball_direction)
	get_tree().call_group("Players", "reset_player")
