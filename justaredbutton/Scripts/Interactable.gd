class_name Interactable
extends Node

@export var nodeName : String
var canBeInteractedWith : bool

func _Interact() -> void:
	print("interacted with " + nodeName)
