extends Node2D


var fuel
var tree
var electricyty
var health
var rangeOfSpawner = Vector2()
var speed
var oldSpeed
var posX
var posY
var lastNode = []
var trainMoveExist
var mainPos
var trainExist
var drillExist
var shielderExist
var scanerExist
var trainFuelVaultExist
var scanerGiveInfo
var resourcesForBuild 

func _ready():
	fuel = 10
	tree = 0
	electricyty = 0
	health = 100
	speed = 0
	rangeOfSpawner = Vector2(0,0)
	oldSpeed = 0
	posX = 0
	posY = 0
	trainMoveExist = 0
	trainFuelVaultExist = 0
	trainExist = 0
	drillExist = 0
	shielderExist = 0
	scanerExist = 0
	scanerGiveInfo = 0
	resourcesForBuild = 10
