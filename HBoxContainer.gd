extends HBoxContainer


onready var numOfRecources = get_child(0).get_child(1)


# Called when the node enters the scene tree for the first time.
func _ready():
	numOfRecources.text = str(0)
func _process(delta):
	numOfRecources.text = str(PlayerVariables.resourcesForBuild) 


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
