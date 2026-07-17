extends Node2D


func _on_parallax_killer_area_entered(area: Area2D) -> void:
	area.queue_free()
