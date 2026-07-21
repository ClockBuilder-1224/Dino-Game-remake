extends CanvasLayer

signal death

@export var score : int = 0
@export var meansOfDeath : int = 0

func _process(delta: float) -> void:
	$Main/Label.text = str(score)
	$DeathUI/Score.text = str(score)
	
	if meansOfDeath == 0:
		$DeathUI/Minecart.visible = true
		
		$DeathUI/TrainStopper.visible = false
		$DeathUI/Rock.visible = false
		$DeathUI/Manhole.visible = false
		$DeathUI/Cactus.visible = false
	elif meansOfDeath == 1:
		$DeathUI/Cactus.visible = true
		
		$DeathUI/TrainStopper.visible = false
		$DeathUI/Minecart.visible = false
		$DeathUI/Rock.visible = false
		$DeathUI/Manhole.visible = false
	elif meansOfDeath == 2:
		$DeathUI/Manhole.visible = true
		
		$DeathUI/TrainStopper.visible = false
		$DeathUI/Minecart.visible = false
		$DeathUI/Rock.visible = false
		$DeathUI/Cactus.visible = false
	elif meansOfDeath == 3:
		$DeathUI/Rock.visible = true
		
		$DeathUI/TrainStopper.visible = false
		$DeathUI/Minecart.visible = false
		$DeathUI/Manhole.visible = false
		$DeathUI/Cactus.visible = false
	elif meansOfDeath == 4:
		$DeathUI/TrainStopper.visible = true
		
		$DeathUI/Minecart.visible = false
		$DeathUI/Rock.visible = false
		$DeathUI/Manhole.visible = false
		$DeathUI/Cactus.visible = false



func _on_death() -> void:
	$DeathUI.visible = true


func _on_replay_pressed() -> void:
	get_tree().reload_current_scene()
