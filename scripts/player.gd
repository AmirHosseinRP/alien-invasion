extends CharacterBody2D

@export var step_size: float = 20.0
@export var step_interval: float = 0.1

var step_timer: float = 0.0


func _physics_process(delta: float) -> void:
	step_timer -= delta

	if step_timer <= 0.0:
		if Input.is_action_pressed("move_right"):
			position.x += step_size
			step_timer = step_interval
		elif Input.is_action_pressed("move_left"):
			position.x -= step_size
			step_timer = step_interval
