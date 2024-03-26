extends Entity

class_name Player

@export var player_stats: PlayerStats

func _physics_process(delta):
	player_movement(delta)
	player_attack()
	move_and_slide()

func player_movement(delta: float):
	direction = Vector2(Input.get_axis("ui_left", "ui_right"), Input.get_axis("ui_up", "ui_down")).normalized()
	
	if direction:
		velocity = direction * player_stats.speed * delta
	else:
		velocity = Vector2.ZERO

func player_attack():
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		$AttackAnimation.play("swing")
