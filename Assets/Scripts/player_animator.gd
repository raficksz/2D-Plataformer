extends Node2D

@export var player_controller : PlayerController;
@export var animation_player : AnimationPlayer;
@export var sprite : Sprite2D;

func _process(delta):
	#sprite flip
	if player_controller.direction == 1:
		sprite.flip_h = false;
	elif player_controller.direction == -1:
		sprite.flip_h = true
	
	#movement
	if abs(player_controller.velocity.x) > 0.0:
		animation_player.play("walk")
	else:
		animation_player.play("idle")
	
	#jump
	if player_controller.velocity.y < 0.0:
		animation_player.play("jump")
	elif player_controller.velocity.y > 0.0:
		animation_player.play("fall")
	
	
	
	
