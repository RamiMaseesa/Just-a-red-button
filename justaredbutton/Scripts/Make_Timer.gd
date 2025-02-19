class_name Make_Timer
extends Node

var childTimer : Timer
var waitTime : int

func _init(pWaitTime) -> void:
	waitTime = pWaitTime
	

func _ready() -> void:
	childTimer = Timer.new()
	add_child(childTimer)
	childTimer.one_shot = true
	childTimer.autostart = false
	childTimer.wait_time = waitTime
	childTimer.timeout.connect(_on_timeout)
	childTimer.start()

func _process(_delta: float) -> void:
	print("timeLeft: ", childTimer.time_left)
	
func _on_timeout() -> void:
	queue_free()
