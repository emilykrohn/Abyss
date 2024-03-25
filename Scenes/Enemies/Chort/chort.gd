extends Enemy

class_name Chort

@export var player: Player

func _physics_process(delta):
	if in_range:
		movement(self, player, delta)
		
func _on_outer_range_body_entered(body):
	if body.name == "Player":
		in_range = true

func _on_outer_range_body_exited(body):
	if body.name == "Player":
		in_range = false
