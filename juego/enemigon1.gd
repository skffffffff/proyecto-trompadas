extends CharacterBody2D
class_name player
@onready var movimiento: Movimiento = $Movimiento
var input_vector: Vector2 

func _ready():
	if movimiento:
		movimiento.setup(self)

func _process(_delta):
	input_vector.x = Input.get_axis("ui_left", "ui_right")
	input_vector.y = Input.get_axis("ui_up", "ui_down")

func _physics_process(_delta):
	if movimiento:
		movimiento.move(input_vector.normalized())
