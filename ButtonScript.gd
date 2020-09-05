extends Button


func _pressed() -> void:
	print("I'm clicked")
	print("Is Pressed: ", is_pressed())

func _ready() -> void:
	print("Inside Ready")
	print("Is Button Pressed: ", is_pressed())
	print("Is Button Desabled: ", is_disabled())













