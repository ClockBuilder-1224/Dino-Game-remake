extends Area2D

@export var SPEED: int = 320

func _process(delta: float) -> void:
	$".".position.x -= SPEED * delta
