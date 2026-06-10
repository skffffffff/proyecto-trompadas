extends RigidBody2D
@export var fuerza_empuje: float = 300.0

func _ready() -> void:
	mouse_entered.connect(_on_mouse_entered)

func _on_mouse_entered() -> void:
	var velocidad_mouse = Input.get_last_mouse_velocity()
	
	var direccion_x: float = 0.0
	
	if abs(velocidad_mouse.x) > 10:
		direccion_x = sign(velocidad_mouse.x)
	else:
		var posicion_relativa_mouse = get_local_mouse_position()
		direccion_x = -sign(posicion_relativa_mouse.x)
	
	
	apply_central_impulse(Vector2(direccion_x * fuerza_empuje, -20))
