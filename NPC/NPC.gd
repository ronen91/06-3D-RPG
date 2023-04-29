extends KinematicBody

onready var Dialogue = get_node("/root/Game/UI/Dialogue")

var dialogue = [
	"I appear to be stuck in this boulder. (Press E to continue)"
	,"Anywho, shoot the 5 targets and you'll get points I guess."
	, "If you get bored, come visit me again. It's not like I'm going anywhere."
	, "God this sucks. I would say I wish I were dead, but I already am."
	, "Anyway, Toodles."
]


func _ready():
	$AnimationPlayer.play("Idle")


func _on_Area_body_entered(body):
	Dialogue.start_dialogue(dialogue)


func _on_Area_body_exited(body):
	Dialogue.hide_dialogue()

