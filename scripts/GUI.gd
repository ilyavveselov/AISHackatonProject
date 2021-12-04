extends MarginContainer


onready var number_label = get_child(0).get_child(0).get_child(0).get_child(0).get_child(0).get_child(0)
onready var number_tree = get_child(0).get_child(1).get_child(1).get_child(0).get_child(0)

func _ready():
	number_label.text = str(0)
func _process(delta):
	number_label.text = str(round(PlayerVariables.fuel))
	number_tree.text = str(PlayerVariables.tree)	



func _on_PathFollow2D_fuel_change(value):
	emit_signal("fuel_change", PlayerVariables.fuel)
