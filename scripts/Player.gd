#extends CharacterBody2D
#
#@export var speed := 120  # Movement speed
#var direction := Vector2.ZERO  # To store input direction
#
#func _process(delta: float) -> void:
	#get_input()
	#velocity = direction * speed
	#move_and_slide()
#
## Handles movement input
#func get_input():
	#direction = Vector2.ZERO  # Reset direction every frame
#
	#if Input.is_action_pressed("ui_right"):
		#direction.x += 1
	#if Input.is_action_pressed("ui_left"):
		#direction.x -= 1
	#if Input.is_action_pressed("ui_down"):
		#direction.y += 1
	#if Input.is_action_pressed("ui_up"):
		#direction.y -= 1
	#
	## Normalize direction to prevent diagonal speed boost
	#direction = direction.normalized()

class_name Player
extends CharacterBody2D

@export var current_tool: DataTypes.Tools = DataTypes.Tools.None

var player_direction: Vector2
