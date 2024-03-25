extends Entity

class_name Enemy

@onready var nav: NavigationAgent2D = $NavigationAgent2D

var in_range: bool = false

func movement(start:Entity, target: Entity, delta: float):
	nav.target_position = target.global_position
	direction = (nav.get_next_path_position() - start.global_position).normalized()
	start.velocity = direction * entity_stats.speed * delta
