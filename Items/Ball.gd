extends RigidBody

var my_spawn


func _ready():
	my_spawn = get_tree().get_root().find_node('BallSpawn', true, false)


func reset():
	translation = my_spawn.translation
	sleeping = false


func freeze():
	sleeping = true
