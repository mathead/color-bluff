tool
extends RigidBody2D

enum Team {UNKNOWN, RED, BLUE, YELLOW}

export(Team) var team = Team.UNKNOWN
export var colors = {
	Team.UNKNOWN: Color("000000"),
	Team.RED: Color("cf1717"),
	Team.BLUE: Color("1c2fc2"),
	Team.YELLOW: Color("d5c916"),
}

func _ready():
	$CPUParticles2D.color = colors[team]

func _draw():
	draw_circle(Vector2(0, 0), 30, colors[team])