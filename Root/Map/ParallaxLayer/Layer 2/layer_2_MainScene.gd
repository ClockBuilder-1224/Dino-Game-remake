extends StaticBody2D

var spriteInstance = preload("res://Root/Map/ParallaxLayer/Layer 2/layer_2.tscn")
signal STOP

func _on_generation_time_timeout() -> void:
	var newFloor = spriteInstance.instantiate()
	
	newFloor.position = $Marker2D.position
	newFloor.name = "Layer_2"
	$GeneratedSprites.add_child(newFloor)
	


func _on_stop() -> void:
	$GenerationTime.stop()
	var allGenerations: Array = $GeneratedSprites.get_children()
	for floor in allGenerations:
		floor.SPEED = 0
