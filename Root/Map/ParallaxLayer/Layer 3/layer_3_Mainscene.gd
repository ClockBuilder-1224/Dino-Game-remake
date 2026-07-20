extends StaticBody2D

var spriteInstance = preload("res://Root/Map/ParallaxLayer/Layer 3/layer_3.tscn")
signal STOP

func _on_generation_time_timeout() -> void:
	var newFloor = spriteInstance.instantiate()
	
	newFloor.position = $Marker2D.position
	newFloor.name = "Layer_3"
	$GeneratedSprites.add_child(newFloor)
