extends CharacterBody2D


const SPEED = 40.0
const JUMP_VELOCITY = -400.0
var last_direction := Vector2(1,0)

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

# Common Godot function for physics processing.
func _physics_process(delta):
	var direction = Input.get_vector("move_left","move_right","move_up","move_down")
	velocity = direction * SPEED
	move_and_slide()
	
	if direction.length() >0:
		last_direction = direction
		#play_walk_animation(direction)
	#else:
		#play_idle_animation(last_direction)


# When enabled, make animation under AnimatedSprite2D
#func play_animation(direction):
	#if direction.x > 0:
		#$AnimatedSprite2D.play("walk_right")
	#elif direction.x < 0:
		#$AnimatedSprite2D.play("walk_left")
	#elif direction.y > 0:
		#$AnimatedSprite2D.play("walk_up")
	#elif direction.y < 0:
		#$AnimatedSprite2D.play("walk_down")

#func play_idle_animation(direction):
	#if direction.x > 0:
		#$AnimatedSprite2D.play("idle_right")
	#elif direction.x < 0:
		#$AnimatedSprite2D.play("idle_left")
	#elif direction.y > 0:
		#$AnimatedSprite2D.play("idle_up")
	#elif direction.y < 0:
		#$AnimatedSprite2D.play("idle_down")
