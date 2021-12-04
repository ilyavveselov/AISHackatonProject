extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _pressed():
	var trainMove = get_parent().get_parent().get_parent().get_node("Path2D4/PathFollow2D/Train_Move")
	var trainVaultFuel = get_parent().get_parent().get_parent().get_node("Path2D4/PathFollow2D/Train_VaultFuel")
	var scanerGiveInfo = get_parent().get_parent().get_parent().get_node("Path2D4/PathFollow2D/Scaner_GiveInfo")
	if trainMove.position.x>-150:
		PlayerVariables.trainMoveExist = 1
	if trainVaultFuel.position.x>-150:
		PlayerVariables.trainFuelVaultExist = 1
	if	PlayerVariables.trainMoveExist == 1:
		PlayerVariables.speed = 50
	else:
		PlayerVariables.speed = 0
	if PlayerVariables.trainFuelVaultExist == 1:
		PlayerVariables.fuel = 10
	if PlayerVariables.trainFuelVaultExist == 0:
		PlayerVariables.fuel = 2
	if scanerGiveInfo.position.x>-150:
		PlayerVariables.scanerGiveInfo = 1
	var gui = get_parent().get_child(0)
	var delete = get_parent().get_child(1)
	var control1 = get_parent().get_child(2)
	var control2 = get_parent().get_child(3)
	var start = get_parent().get_child(4)
	var clocks = get_parent().get_child(7)
	print(clocks)
	gui.visible = true
	delete.visible = false
	control1.visible = false
	control2.visible = false
	start.visible = false
	clocks.visible = false
	
