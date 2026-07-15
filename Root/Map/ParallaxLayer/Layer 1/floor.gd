extends "res://Root/Map/ParallaxLayer/parallax_layer_parent.gd"

func _ready():
	var random = randi_range(0, 2)
	
	var region = Rect2(random * 144, 0, 144, 48)
	
	$Floor.region_rect = region
