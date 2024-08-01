extends CharacterBody2D
var paddle_half_height
var initial_position = Vector2()

func _physics_process(delta):
	_move_direction()
	move_and_slide()
	var viewport_rect = get_viewport().get_visible_rect()
	position.y = clamp(position.y, paddle_half_height, viewport_rect.size.y - paddle_half_height)

func _ready():
	initial_position = position
	paddle_half_height = %Collision.shape.extents.y
	
func _move_direction():
	var direction = Input.get_vector("", "", "left_moves_up", "left_moves_down")
	velocity = direction * 600
	
func reset_player():
	position = initial_position
