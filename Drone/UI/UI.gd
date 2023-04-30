extends CanvasLayer

export var healing = 0.001


func add_damage(d):
	$Damage.color.a = clamp($Damage.color.a + d, 0, 1)

func _physics_process(_delta):
	if $Damage.color.a > 0:
		$Damage.color.a -= healing
