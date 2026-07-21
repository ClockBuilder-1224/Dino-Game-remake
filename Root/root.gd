extends Node2D

var score = 0
var scoreIncreaser = 0.2

func _on_parallax_killer_area_entered(area: Area2D) -> void:
	area.queue_free()

func _process(delta: float) -> void:
	score += scoreIncreaser
	
	$GameUI.score = score


func _on_player_collision_area_entered(area: Area2D) -> void:
	
	if area.type ==0:
		$GameUI.death.emit()
		scoreIncreaser = 0
		$Obstacle/NextSpawn.stop()
		$Player.inputDisabled = true
		$ParallaxLayer/Floor.STOP.emit()
		$ParallaxLayer/Layer2.STOP.emit()
		$ParallaxLayer/Layer3.STOP.emit()
		return
	
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
		
		# wrapping up the game
		
		
		
		$GameUI.death.emit()
		scoreIncreaser = 0
		$Obstacle/NextSpawn.stop()
		$Obstacle.stop.emit()
		
		if area.type == 2:
			$Player.fall.emit()
		else:
			$Player.inputDisabled = true
		
		$ParallaxLayer/Floor.STOP.emit()
		$ParallaxLayer/Layer2.STOP.emit()
		$ParallaxLayer/Layer3.STOP.emit()
		
		var camera = $Camera2D
		$Player.add_child(camera)
		
		
