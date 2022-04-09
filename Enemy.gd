extends Area2D

export var speed : int = 100
export var moveDistance : int = 100

onready var startX : int = position.x
onready var targetX : int = position.x + moveDistance

func move_to(current, to, step):
	var new = current
	if new < to:
		new += step
		
		if new > to:
			new = to
	else:
		new -= step

		if new < to:
			new = to
	return new
