extends PathFollow2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


func _process(delta):
	set_offset(get_offset() + delta*PlayerVariables.speed)
	PlayerVariables.rangeOfSpawner = get_position()
func _ready():
	pass # Replace with function body.
