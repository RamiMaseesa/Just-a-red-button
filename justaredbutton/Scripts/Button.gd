extends Interactable

@export var animator : AnimationPlayer 

func _Interact() -> void:
	super._Interact()
	animator.play("Armature|ArmatureAction")
