extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocity = Vector2.ZERO
onready var animation_player=$AnimationPlayer
# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	if input_vector != Vector2.ZERO:
		if input_vector.x>0:
			animation_player.play("New Anim")
		else:
			animation_player.play("runleft")
		
		velocity = input_vector
	else:
		animation_player.play("Idelnaut")
		velocity = Vector2.ZERO
#	if Input.is_action_pressed("ui_right"):
#		velocity.x =4
#	elif Input.is_action_pressed("ui_left"):
#		velocity.x =-4
#	elif Input.is_action_pressed("ui_up"):
#		velocity.y =-4
#	elif Input.is_action_pressed("ui_down"):
#		velocity.y =4
#	else:
#		velocity.x=0
#		velocity.y=0
		
	move_and_slide(velocity*50)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
