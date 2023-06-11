extends Sprite2D
class_name tile
@export var selectedc:Color
@export var notselectedc:Color
@export var type:String

@onready var label = $Label

var selected:bool

func _ready():
	label.text = ""

func _process(delta):
	modulate = selectedc if selected else notselectedc	
	label.text = type
# Called when the node enters the scene tree for the first time.
func _input(event):
	if event.is_action("select"):
		if event.is_pressed():
			if get_rect().has_point(get_local_mouse_position()):
				selected = not selected
				pass
