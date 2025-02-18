extends RayCast3D

var _currentObject : Interactable = null
@export var cursor : TextureRect

var collider:
	set(value):
		if value is Interactable:
			_currentObject = value
		else: #checks if the object is Interactable
			_currentObject = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if self.is_colliding():
		collider = self.get_collider()
		cursor.visible = true
	elif !self.is_colliding() or not (_currentObject is Interactable): 
		_currentObject = null
		cursor.visible = false
	
	if _currentObject != null and Input.is_action_just_pressed("Interact"): #Interact with interactable if it isn't null and action is Interact
		_currentObject._Interact()
