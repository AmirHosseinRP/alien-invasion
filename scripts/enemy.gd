extends Area2D

class_name Enemy

@export var sprite_frames: SpriteFrames
@export var default_animation: StringName = &"idle"

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D


func _ready() -> void:
	if sprite_frames:
		animated_sprite.sprite_frames = sprite_frames

	animated_sprite.play(default_animation)
