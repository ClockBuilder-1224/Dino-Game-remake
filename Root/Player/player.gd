extends CharacterBody2D

const JUMP_VELOCITY = -625.0

var currentState = 0

@export var inputDisabled : bool = false

signal fall

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		currentState = 1
		velocity += get_gravity() * delta
	else:
		currentState = 0

	# Handle jump.
	if Input.is_action_pressed("Jump") and is_on_floor() and not inputDisabled:
		velocity.y = JUMP_VELOCITY
		$"Jump-Sound".play()
	
	_updateAnim()
	
	move_and_slide()

func _updateAnim():
	if inputDisabled :
		$Art.play("Death")
		return
	if currentState == 0:
		$Art.play("Run")
	elif currentState == 1:
		$Art.play("Jump")
	
	


func _on_fall() -> void:
	$CollisionShape2D.position.y -= 100
	inputDisabled = true
