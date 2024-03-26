extends Enemy

class_name Chort

@onready var nav: NavigationAgent2D = $NavigationAgent2D
@export var player: Player

func _physics_process(delta):
	if in_range:
		movement(self, player, delta)

func get_nav():
	return nav

func _on_outer_range_body_entered(body):
	if body.name == "Player":
		in_range = true

func _on_outer_range_body_exited(body):
	if body.name == "Player":
		in_range = false
