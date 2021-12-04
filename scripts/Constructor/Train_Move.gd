extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Train_Move_pressed():
	if	PlayerVariables.resourcesForBuild>1:
		var trainMoveNode = get_parent().get_node("Train_Move")
		PlayerVariables.lastNode.append(trainMoveNode)
		trainMoveNode.position.x = PlayerVariables.posX - 16
		trainMoveNode.position.y = PlayerVariables.posY
		add_child(trainMoveNode)
		PlayerVariables.posX -= 16
		PlayerVariables.resourcesForBuild-=1 
