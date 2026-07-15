extends "res://Root/Map/ParallaxLayer/parallax_layer_parent.gd"


@onready var SpawnableItem1 = $Cactus
@onready var SpawnableItem2 = $Rock
@onready var SpawnableItem3 = $Sign
@onready var SpawnableItem4 = $Box

func _ready() -> void:
	var Location = randi_range(1, 3)
	
	if Location == 1:
		var object = randi_range(1, 4)
		spawnObject(%Marker2D, object)
	elif Location == 2:
		var object = randi_range(1, 4)
		spawnObject(%Marker2D2, object)
	else:
		var object = randi_range(1, 4)
		spawnObject(%Marker2D3, object)

func spawnObject(Location : Marker2D, Object : int):
	var spawn = randi_range(1, 100)
	
	var object
	
	if Object == 1:
		object = SpawnableItem1.duplicate()
	elif Object == 2:
		object = SpawnableItem2.duplicate()
	elif Object == 3:
		object = SpawnableItem3.duplicate()
	elif Object == 4:
		object = SpawnableItem4.duplicate()
	
	if spawn >= 70:
		object.visible = true
		object.position = Location.position
		$".".add_child(object)
