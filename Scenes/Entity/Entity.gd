extends CharacterBody2D

class_name Entity

@export var entity_stats: EntityStats

var health: int
var direction: Vector2 = Vector2.ZERO

func _ready():
	health = entity_stats.max_health

func movement(start:Entity, target: Entity, delta: float):
	start.global_position += (target.global_position - start.global_position).normalized() * entity_stats.speed * delta

func damage(target: Entity):
	target.take_damage(entity_stats.attack_damage)

func take_damage(amount: int):
	health -= amount
	if health <= 0:
		die()

func die():
	queue_free()
