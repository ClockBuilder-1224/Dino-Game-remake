extends Node2D

var score = 0

func _on_parallax_killer_area_entered(area: Area2D) -> void:
	area.queue_free()

func _process(delta: float) -> void:
	score += 0.2
	
	$GameUI.score = score


func _on_player_collision_area_entered(area: Area2D) -> void:
	if area.type:
		if area.type == 0:
			$GameUI.meansOfDeath = 0
		elif area.type == 1:
			$GameUI.meansOfDeath = 1
		elif area.type == 2:
			$GameUI.meansOfDeath = 2
		elif area.type == 3:
			$GameUI.meansOfDeath = 3
		elif area.type == 4:
			$GameUI.meansOfDeath = 4
