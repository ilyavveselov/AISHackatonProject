extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func spawn():
	var scanerScanNode = get_parent().get_node("Scaner_Scan")
	PlayerVariables.lastNode.append(scanerScanNode)
	PlayerVariables.scanerExist = 1
	scanerScanNode.position.x = PlayerVariables.posX - 16
	scanerScanNode.position.y = PlayerVariables.posY
	add_child(scanerScanNode)
	PlayerVariables.posX -= 16 
func _on_Scaner_Scan_pressed():
	if PlayerVariables.resourcesForBuild>1:
		if PlayerVariables.scanerExist == 0:
			PlayerVariables.resourcesForBuild-=3
			spawn()
			PlayerVariables.scanerExist = 0 #почему-то становилась 1
		else:
			PlayerVariables.resourcesForBuild-=1
			spawn()
