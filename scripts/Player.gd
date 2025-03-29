extends CharacterBody2D

@export var speed := 200  # Movement speed
var direction := Vector2.ZERO

func _process(delta: float) -> void:
	get_input()
	velocity = direction * speed
	move_and_slide()

func get_input():
	direction = Vector2.ZERO
	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_down"):
		direction.y += 1
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1
	direction = direction.normalized()
