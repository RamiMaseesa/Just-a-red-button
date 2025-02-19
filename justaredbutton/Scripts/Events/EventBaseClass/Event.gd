extends Node
class_name Event

signal eventFinished

func _event_Has_Concluded() -> void:
	eventFinished.emit()

func _Play_Event() -> void:
	_event_Has_Concluded()
