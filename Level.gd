extends Node2D

func _process(delta):
	$EnergyBar.value = $Player.energy
