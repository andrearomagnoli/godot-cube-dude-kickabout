extends RigidBody

var my_spawn


func _ready():
	my_spawn = get_tree().get_root().find_node('BallSpawn', true, false)


func reset():
	translation = my_spawn.translation
	sleeping = false


func freeze():
	sleeping = true


func _on_Ball_body_entered(body):
	if body is KinematicBody and not $AudioStreamPlayer.is_playing():
		$AudioStreamPlayer.play()
