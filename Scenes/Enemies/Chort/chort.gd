extends Entity

class_name Chort

@export var player: Player

func _physics_process(delta):
	movement(self, player, delta)
