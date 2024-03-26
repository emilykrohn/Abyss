extends Entity

class_name Enemy

var in_range: bool = false

func movement(start:Entity, target: Entity, delta: float):
	start.get_nav().target_position = target.global_position
	if start.get_nav().is_navigation_finished():
		return
	direction = (start.get_nav().get_next_path_position() - start.global_position).normalized()
	start.velocity = direction * entity_stats.speed * delta
	move_and_slide()

func get_nav():
	pass
