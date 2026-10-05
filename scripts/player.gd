extends CharacterBody2D

class_name Player

@export var movement_speed: int = 300


func _physics_process(_delta: float) -> void:
	velocity = Vector2.ZERO

	if Input.is_action_pressed("move_right"):
		velocity.x = movement_speed
	if Input.is_action_pressed("move_left"):
		velocity.x = -movement_speed

	move_and_slide()
