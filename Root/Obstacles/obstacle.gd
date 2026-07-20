extends Node2D

var cactus = preload("res://Root/Obstacles/GameObstacles/cactus_obstacle.tscn")
var minecart = preload("res://Root/Obstacles/GameObstacles/minecart.tscn")
var train_Stopper = preload("res://Root/Obstacles/GameObstacles/train_stopper.tscn")
var rock = preload("res://Root/Obstacles/GameObstacles/rock.tscn")
var man_hole = preload("res://Root/Obstacles/GameObstacles/train_stopper.tscn")

signal stop

func newObstacle():
	var random = randi_range(0, 5)
	
	var newObstacle
	
	if(random == 0):
		newObstacle = minecart.instantiate()
		newObstacle.name = "minecart"
	elif(random == 1):
		newObstacle = cactus.instantiate()
		newObstacle.name = "cactus"
	elif(random == 2):
		newObstacle = train_Stopper.instantiate()
		newObstacle.name = "train_Stopper"
	elif(random == 3):
		newObstacle = rock.instantiate()
		newObstacle.name = "rock"
	elif(random == 4):
		newObstacle = man_hole.instantiate()
		newObstacle.name = "man_hole"
	elif(random == 5):
		newObstacle = man_hole.instantiate()
		newObstacle.name = "man_hole"
	
	var scale = 1.3
	newObstacle.scale.x *= scale
	newObstacle.scale.y *= scale
	
	newObstacle.position = $SpawnPoint.global_position
	$GeneratedObstacles.add_child(newObstacle)

func _on_next_spawn_timeout() -> void:
	newObstacle()
	var waitSpeed = randf_range(1, 4)
	
	$NextSpawn.wait_time = waitSpeed
	$NextSpawn.start()


func _on_stop() -> void:
	var Allobstacles : Array = $GeneratedObstacles.get_children()
	
	for obstacles in Allobstacles:
		obstacles.SPEED = 0
