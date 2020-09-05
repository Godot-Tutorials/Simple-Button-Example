extends Node2D

var rng: RandomNumberGenerator = RandomNumberGenerator.new()
var randomWidth: float
var randomHeight: float

# static, not dynamic
onready var childButton: Button = self.get_child(0) # zero makes this static

func _ready() -> void:
	rng.randomize()
	
	# connect to the child nodes pressed signal
	childButton.connect("pressed", self, "changePlacement")

func _draw() -> void:
	draw_circle(Vector2(randomWidth, randomHeight),5,Color.white)

func changePlacement() -> void:
	randomPlacement()
	update()

func randomPlacement() -> void:
	randomWidth = rng.randf_range(0.0,1000.0)
	randomHeight = rng.randf_range(0.0,600.0)
