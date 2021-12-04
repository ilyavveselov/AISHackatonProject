extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if PlayerVariables.tree>1:
		PlayerVariables.fuel += 5
		PlayerVariables.tree -= 1
		
func _on_Train_FuelVault_pressed():
	if PlayerVariables.resourcesForBuild>1:
		PlayerVariables.resourcesForBuild-=1
		var trainFuelVaultNode = get_parent().get_node("Train_VaultFuel")
		PlayerVariables.lastNode.append(trainFuelVaultNode)
		trainFuelVaultNode.position.x = PlayerVariables.posX - 16
		trainFuelVaultNode.position.y = PlayerVariables.posY
		add_child(trainFuelVaultNode)
		PlayerVariables.posX -= 16 
