extends Parallax2D

@onready var sprite_2d: Sprite2D = $Sprite2D

@export var scroll_speed: int = 30


func _process(delta: float) -> void:
	sprite_2d.region_rect.position += Vector2(0, -scroll_speed * delta)
