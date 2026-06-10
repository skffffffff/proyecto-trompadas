extends CharacterBody2D
class_name Enemy_2
@onready var movimiento: Movimiento = $Movimiento as Movimiento 
@onready var sensor : Area2D = $"Sensor" 

func _ready():
	if movimiento:
		movimiento.setup(self)



func _on_sensor_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
