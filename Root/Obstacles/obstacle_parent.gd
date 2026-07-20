extends Area2D

@export var SPEED : int = 320 
@export var type : int = 6

func _process(delta: float) -> void:
	$".".position.x -= SPEED * delta

func _on_area_entered(area: Area2D) -> void:
	if area.name == "Player_Collision":
		pass
