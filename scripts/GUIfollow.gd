extends PathFollow2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _ready():
	var gui = get_child(0)
#	var addFuel = get_child(0)
	var delete = get_child(1)
	var control1 = get_child(2)
	var control2 = get_child(3)
	var start = get_child(4)
	gui.visible = false
	delete.visible = true
	control1.visible = true
	control2.visible = true
	start.visible = true
# Called when the node enters the scene tree for the first time.
func _process(delta):
	set_offset(get_offset() + delta * PlayerVariables.speed)
	

