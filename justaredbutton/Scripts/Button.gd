extends Interactable

@export var animator: AnimationPlayer
@export var events: Array[Event]

const BUTTON_CLICK_PARTICLE = preload("res://Prefabs/Particles/ButtonClickParticle.tscn")

var clickAmount : int = 0

func _ready() -> void:
	canBeInteractedWith = true
	for event in events:
		event.eventFinished.connect(on_event_finished);

func _Interact() -> void:
	super._Interact()
	clickAmount + 1
	animator.play("Armature|ArmatureAction")
	#events[clickAmount].eventFinished.connect(on_event_finished);
	events[clickAmount]._Play_Event()
	canBeInteractedWith = false
	add_child(BUTTON_CLICK_PARTICLE.instantiate())
	
	
func on_event_finished() -> void:
	canBeInteractedWith = true
	
