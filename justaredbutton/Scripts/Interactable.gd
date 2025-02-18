class_name Interactable
extends Node

@export var nodeName : String

func _Interact() -> void:
	print("interacted with " + nodeName)
