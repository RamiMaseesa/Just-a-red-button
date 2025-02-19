extends Node

var timer : Make_Timer
@export var pillarAnimation : AnimationPlayer
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer = Make_Timer.new(2)
	add_child(timer)
	timer.childTimer.timeout.connect(_on_node_timer_over)

func _on_node_timer_over() -> void:
	print("pillarEmerges")
	pillarAnimation.play("PillarEmerges")
	queue_free()
