extends Node

@export var object : VisibleOnScreenNotifier3D
var buttonHasAppeared : bool

func _on_visible_on_screen_notifier_3d_screen_exited() -> void:
	if buttonHasAppeared:
		object.get_parent_node_3d().visible = false;


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	buttonHasAppeared = true
