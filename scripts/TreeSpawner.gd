extends Node2D

var tree
var screen_size
var rand = RandomNumberGenerator.new()
var treeScene = load("res://Tree.tscn")
var counter = 0
func _process(delta):
	if counter > 3.8:
		createTree()
		counter = 0
	else:
		counter+=1*delta
func _ready():
	PlayerVariables.speed = 0
func createTree():
	tree = treeScene.instance()
	rand.randomize()
	var x = rand.randf_range(PlayerVariables.rangeOfSpawner.x+30, PlayerVariables.rangeOfSpawner.x + 80)
	rand.randomize()
	var y = rand.randf_range(PlayerVariables.rangeOfSpawner.y+30,PlayerVariables.rangeOfSpawner.y + 60)
	tree.position.x = x
	tree.position.y = y 
	add_child(tree)

func _on_Scaner_Scan_body_entered(body):
	if PlayerVariables.scanerGiveInfo == 1:
		body.get_child(0).get_child(0).texture = load("res://sprites/tree/tree-chopped.png")
		PlayerVariables.tree += 0.5
