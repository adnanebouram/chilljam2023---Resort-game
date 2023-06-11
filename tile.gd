extends Sprite2D


@export var debug:Color

# Called when the node enters the scene tree for the first time.
func _input(event):
	if event.is_action("click"):
		if event.is_pressed():
			if get_rect().has_point(to_local(event.position)):
				modulate = debug
