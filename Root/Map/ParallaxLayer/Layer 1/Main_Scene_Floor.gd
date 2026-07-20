extends StaticBody2D

var floorInstance = preload("res://Root/Map/ParallaxLayer/Layer 1/floor.tscn")
signal STOP


func _on_new_floor_timer_timeout() -> void:
	var newFloor = floorInstance.instantiate()
	
	newFloor.position = $Marker2D.position
	newFloor.name = "Floor"
	$GeneratedFloor.add_child(newFloor)


func _on_stop() -> void:
	$NewFloorTimer.stop()
	var allGenerations: Array = $GeneratedFloor.get_children()
	for floor in allGenerations:
		floor.SPEED = 0
	
