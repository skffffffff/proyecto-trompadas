extends Node
class_name Movimiento
@export var speed : float = 32.0
@export var max_speed: float = 32.0
var character : CharacterBody2D
func setup(character2D : CharacterBody2D):
	character = character2D

func move(input_vector: Vector2):
	character.velocity =  input_vector.normalized()* speed
	character.move_and_slide()
func stop_movement():
	character.velocity = Vector2.ZERO
	
