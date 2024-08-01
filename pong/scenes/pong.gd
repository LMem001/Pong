extends Node2D

func _on_goal_left_area_entered(area):
	%Ball.reset_ball("right")
	get_tree().call_group("Players", "reset_player")

func _on_goal_right_area_entered(area):
	%Ball.reset_ball("left")
	get_tree().call_group("Players", "reset_player")
