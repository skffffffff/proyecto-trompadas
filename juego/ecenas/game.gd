extends Node2D
@onready var button: Button = $Button
@onready var button_2: Button = $Button2
@onready var menu: Sprite2D = $Sprite2D
@onready var textura_del_menu: Sprite2D = $Sprite2D
@onready var animation_player: AnimationPlayer = $Sprite2D/AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	button.visible = true
	button_2.visible = false
	textura_del_menu.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button1_pressed() -> void:
	menu.visible = true
	animation_player.play("new_animation")
	await get_tree().create_timer(0.3, false).timeout
	button.visible = false
	button_2.visible = true



func _on_button_2_pressed() -> void:
	animation_player.play("menu_back")
	await get_tree().create_timer(0.3, false).timeout
	button_2.visible = false
	await get_tree().create_timer(0.5, false).timeout
	textura_del_menu.visible = false
