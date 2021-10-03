extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.

func _process(delta):
	if Input.is_action_just_pressed("ui_down"):
		position.y +=1
	if Input.is_action_just_pressed("ui_up"):
		position.y -=1
	if Input.is_action_pressed("ui_select"):
		rotation -=1
	if Input.is_action_pressed("ui_focus_next"):
		get_tree().change_scene("res://Node2D-2.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass