extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	var s_main = get_parent().get_parent().get_parent().get_node("Path2D3/PathFollow2D/Control2/SpawnScanerClass")
	var s_scan = get_parent().get_parent().get_parent().get_node("Path2D3/PathFollow2D/Control2/Scaner_Scan()")
	var s_giveInfo = get_parent().get_parent().get_parent().get_node("Path2D3/PathFollow2D/Control2/Scaner_GiveInfo()")
#
#	if PlayerVariables.scanerExist == 1:
#		s_main.visible = false
#		s_scan.visible = true
#		s_giveInfo.visible = true
#	else:
#		s_main.visible = true
#		s_giveInfo.visible = false
#		s_scan.visible = false


func _on_SpawnScanerClass_pressed():
	if PlayerVariables.resourcesForBuild>1:
		PlayerVariables.resourcesForBuild-=1
		var scanerNode = get_parent().get_node("Scaner")
		PlayerVariables.lastNode.append(scanerNode)
		PlayerVariables.scanerExist = 1
		scanerNode.position.x = PlayerVariables.posX - 16
		scanerNode.position.y = PlayerVariables.posY
		add_child(scanerNode)
		PlayerVariables.posX -= 16 
