extends NodeState

@export var player: Player
@export var animated_sprite_2d: AnimatedSprite2D
@export var speed: int = 80

func _on_process(_delta : float) -> void:
	pass


func _on_physics_process(_delta : float) -> void:
	var direction: Vector2 = GameInputEvents.movement_input()
	

	if direction.x > 0:
		animated_sprite_2d.play("walking_right")
	elif direction.x < 0:
		animated_sprite_2d.play("walking_left")
	elif direction.y > 0:
		animated_sprite_2d.play("walking_front")
	elif direction.y < 0:
		animated_sprite_2d.play("walking_back")

	if direction != Vector2.ZERO:
		player.player_direction = direction

	player.velocity = direction * speed
	player.move_and_slide()


func _on_next_transitions() -> void:
	if !GameInputEvents.is_movement_input():
		transition.emit("Idle")


func _on_enter() -> void:
	pass


func _on_exit() -> void:
	animated_sprite_2d.stop()
