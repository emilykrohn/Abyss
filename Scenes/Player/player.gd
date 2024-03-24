extends Entity

class_name Player

@export var player_stats: PlayerStats
var direction = Vector2.ZERO

func _physics_process(delta):
	direction = Vector2(Input.get_axis("ui_left", "ui_right"), Input.get_axis("ui_up", "ui_down")).normalized()
	
	if direction:
		velocity = direction * player_stats.speed * delta
	else:
		velocity = Vector2.ZERO

	move_and_slide()
