extends CharacterBody2D

const JUMP_VELOCITY = -625.0

var currentState = 0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		currentState = 1
		velocity += get_gravity() * delta
	else:
		currentState = 0

	# Handle jump.
	if Input.is_action_pressed("Jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	_updateAnim()
	
	move_and_slide()

func _updateAnim():
	if currentState == 0:
		$Art.play("Run")
	elif currentState == 1:
		$Art.play("Jump")
