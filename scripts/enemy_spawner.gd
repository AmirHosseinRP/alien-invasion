extends Node2D

const ENEMY_SCENE: PackedScene = preload("res://scenes/enemy.tscn")
const ENEMY_FRAMES: Array[SpriteFrames] = [
	preload("res://assets/frames/enemy1.tres"),
	preload("res://assets/frames/enemy2.tres"),
	preload("res://assets/frames/enemy3.tres"),
	preload("res://assets/frames/enemy4.tres"),
	preload("res://assets/frames/enemy5.tres"),
	preload("res://assets/frames/enemy6.tres"),
]

@export var columns_count: int = 7

@onready var spawn_positions: Node2D = $SpawnPositions


func _ready() -> void:
	spawn_enemies()


func spawn_enemies() -> void:
	var spawn_positions_children: Array[Node] = spawn_positions.get_children()

	for i in spawn_positions_children.size():
		var spawn_position: Node2D = spawn_positions_children[i]

		@warning_ignore("integer_division")
		var row: int = i / columns_count

		var enemy_instance: Enemy = ENEMY_SCENE.instantiate()

		enemy_instance.sprite_frames = ENEMY_FRAMES[row]
		enemy_instance.global_position = spawn_position.global_position

		add_child(enemy_instance)
