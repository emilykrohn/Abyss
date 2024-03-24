extends CharacterBody2D

class_name Entity

@export var entity_stats: EntityStats
var health: int

func _ready():
	health = entity_stats.max_health

func movement(target: Entity, delta: float):
	velocity = target.global_position * entity_stats.speed * delta

func damage(target: Entity):
	target.take_damage(entity_stats.attack_damage)

func take_damage(amount: int):
	health -= amount
	if health <= 0:
		die()

func die():
	queue_free()
