extends PathFollow2D

func _process(delta):
	set_offset(get_offset() + delta*PlayerVariables.speed)
	
	if PlayerVariables.speed >0:
		stop(delta)

	
func stop(delta):
	PlayerVariables.fuel = PlayerVariables.fuel - 1 * delta
	if	PlayerVariables.fuel < 0:
		PlayerVariables.oldSpeed = PlayerVariables.speed
		PlayerVariables.speed = 0
		PlayerVariables.fuel = -0.000000001
		get_child(0).get_child(1).get_child(0).playing = false
	else:
		get_child(0).get_child(1).get_child(0).playing = true
