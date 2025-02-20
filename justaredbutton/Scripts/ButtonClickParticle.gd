extends Node3D


@onready var lines: GPUParticles3D = $Lines
@onready var balls: GPUParticles3D = $Balls
@onready var button_press: AudioStreamPlayer = $ButtonPress

func _ready() -> void:
	lines.emitting = true
	balls.emitting = true
	button_press.play()
	await get_tree().create_timer(1).timeout
	queue_free()
