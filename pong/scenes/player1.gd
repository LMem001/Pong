extends CharacterBody2D
var paddle_half_height

func _physics_process(delta):
	_move_direction()
	move_and_slide()
	
func _move_direction():
	var direction = Input.get_vector("", "", "left_moves_up", "left_moves_down")
	velocity = direction * 600
