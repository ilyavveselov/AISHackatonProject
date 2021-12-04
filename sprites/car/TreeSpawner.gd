extends Node2D

var tree
var screen_size
var rand = RandomNumberGenerator.new()
var treeScene = load("res://Tree.tscn")
var counter = 0
func _process(delta):
	if counter > 2:
		createTree()
		counter = 0
	else:
		counter+=1*delta

func createTree():
	tree = treeScene.instance()
	rand.randomize()
	var x = rand.randf_range(PlayerVariables.rangeOfSpawner.x, PlayerVariables.rangeOfSpawner.x - 5)
	rand.randomize()
	var y = rand.randf_range(PlayerVariables.rangeOfSpawner.y,PlayerVariables.rangeOfSpawner.y - 5)
	tree.position.x = x
	tree.position.y = y 
	add_child(tree)

func _on_Area2D_body_entered(body):
	body.get_child(0).get_child(0).texture = load("res://sprites/tree/tree_choped.png")
	PlayerVariables.tree += 1

