extends CharacterBody2D
class_name Enemy
@onready var movimiento: Movimiento = $Movimiento as Movimiento 
@onready var sensor : Area2D = $"Sensor" 
var player : CollisionObject2D
func _ready():
	if movimiento:
		movimiento.setup(self)

func _physics_process(delta):
	if player != null:
		var direccion = player.global_position - global_position
		var distancia = global_position.direction_to(player.global_position)
		if distancia > 100:
			movimiento.move(direccion)

func _on_sensor_body_entered(body: Node2D) -> void:
	player = body
