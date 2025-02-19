extends Interactable

@export var animator: AnimationPlayer
@export var events: Array[Event]

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
	
func on_event_finished() -> void:
	canBeInteractedWith = true
	
