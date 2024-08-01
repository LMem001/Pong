extends Node2D

func _on_goal_left_area_entered(area):
	%Ball.reset_ball("right")

func _on_goal_right_area_entered(area):
	%Ball.reset_ball("left")
