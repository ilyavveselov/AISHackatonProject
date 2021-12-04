extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _process(delta):
	pass # Replace with function body.


func _on_Scaner_GiveInfo_pressed():
	if PlayerVariables.resourcesForBuild>1:
		PlayerVariables.scanerGiveInfo = 1
		PlayerVariables.resourcesForBuild-=1
		var	scanerGive = get_parent().get_node("Scaner_GiveInfo")
		PlayerVariables.lastNode.append(scanerGive)
		scanerGive.position.x = PlayerVariables.posX - 16
		scanerGive.position.y = PlayerVariables.posY
		add_child(scanerGive)
		PlayerVariables.posX -= 16 
