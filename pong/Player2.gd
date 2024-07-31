extends "res://scenes/player1.gd"

func _move_direction():
	var direction = Input.get_vector("", "", "right_moves_up", "right_moves_down")
	velocity = direction * 600
