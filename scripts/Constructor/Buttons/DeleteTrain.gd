extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _pressed():
	var length : int = PlayerVariables.lastNode.size()
	if length != 0:
		PlayerVariables.lastNode[length-1].position.x = PlayerVariables.posX 
		PlayerVariables.lastNode[length-1].position.y = PlayerVariables.posY - 130
		PlayerVariables.posX += 16 
		PlayerVariables.posY += 1
		if PlayerVariables.lastNode[length-1] == get_parent().get_parent().get_parent().get_node("Path2D4/PathFollow2D/Train"):
			PlayerVariables.trainExist = 0
		if PlayerVariables.lastNode[length-1] == get_parent().get_parent().get_parent().get_node("Path2D4/PathFollow2D/Scaner"):
			PlayerVariables.scanerExist = 0
		if PlayerVariables.lastNode[length-1] == get_parent().get_parent().get_parent().get_node("Path2D4/PathFollow2D/Scaner_GiveInfo"):
			PlayerVariables.scanerGiveInfo = 0
			
	if	length>0:
		PlayerVariables.lastNode.resize(length-1)
		PlayerVariables.resourcesForBuild+=1
	else:
		PlayerVariables.lastNode.clear()
		PlayerVariables.resourcesForBuild+=1
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
