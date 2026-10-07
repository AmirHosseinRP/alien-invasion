class_name Player

extends CharacterBody2D

const LASER_SCENE = preload("res://scenes/laser.tscn")
const GAME_SCENE = preload("res://scenes/game.tscn")

@export var movement_speed: int = 300


func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("shoot"):
		shoot()


func _physics_process(_delta: float) -> void:
	velocity = Vector2.ZERO

	if Input.is_action_pressed("move_right"):
		velocity.x = movement_speed
	if Input.is_action_pressed("move_left"):
		velocity.x = -movement_speed

	move_and_slide()


func shoot() -> void:
	var laser_instance: Area2D = LASER_SCENE.instantiate()
	get_tree().current_scene.add_child(laser_instance)
	laser_instance.global_position = global_position - Vector2(0, 24)
