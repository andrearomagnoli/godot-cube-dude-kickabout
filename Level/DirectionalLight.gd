extends DirectionalLight

var default_light_energy


func _ready():
	default_light_energy = light_energy


func freeze(_player_id):
	$AnimationPlayer.play("Fade", -1, 1.0, false)


func reset():
	light_energy = default_light_energy
