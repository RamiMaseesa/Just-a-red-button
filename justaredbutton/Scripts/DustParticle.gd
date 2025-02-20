extends Node3D


@onready var gpu_particles_3d: GPUParticles3D = $GPUParticles3D
@onready var jump_sfx: AudioStreamPlayer = $JumpSfx

func _ready() -> void:
	gpu_particles_3d.emitting = true
	jump_sfx.play()
	await get_tree().create_timer(1).timeout
	queue_free()
