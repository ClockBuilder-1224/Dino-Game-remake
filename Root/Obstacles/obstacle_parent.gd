extends Area2D

@export var SPEED : int = 10 

func _process(delta: float) -> void:
	$".".position.x -= SPEED

func _on_area_entered(area: Area2D) -> void:
	if area.name == "Player_Collision":
		print("DIE")
