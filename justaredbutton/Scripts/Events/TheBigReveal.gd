extends Event

@onready var roomAnimator: AnimationPlayer = $"../Room/AnimationPlayer"

func _ready() -> void:
	roomAnimator.connect("animation_finished", _On_Animation_Finished)

func _Play_Event() -> void:
	roomAnimator.play("Armature|ArmatureAction")
	
func _On_Animation_Finished(_animation_name: String) -> void:
	_event_Has_Concluded()
	
