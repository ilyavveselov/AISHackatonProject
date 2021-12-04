extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	var t_moveB = get_parent().get_parent().get_parent().get_node("Path2D3/PathFollow2D/Control/Train_Move")
	var t_fuelB = get_parent().get_parent().get_parent().get_node("Path2D3/PathFollow2D/Control/Train_FuelVault")
	var t_main = get_parent().get_parent().get_parent().get_node("Path2D3/PathFollow2D/Control/SpawnTrainClass")
	if PlayerVariables.trainExist == 1:
		t_main.visible = false
		t_fuelB.visible = true
		t_moveB.visible = true
	else:
		t_main.visible = true
		t_fuelB.visible = false
		t_moveB.visible = false



func _on_SpawnTrainClass_pressed():
	if PlayerVariables.resourcesForBuild>1:
		PlayerVariables.resourcesForBuild-=1
		var	trainNode = get_parent().get_node("Train")
		PlayerVariables.trainExist = 1
		PlayerVariables.lastNode.append(trainNode)
		trainNode.position.x = PlayerVariables.posX - 16
		trainNode.position.y = PlayerVariables.posY - 2
		add_child(trainNode)
		PlayerVariables.posX -= 16 
		PlayerVariables.posY -= 2
