extends KinematicBody2D


var movement = Vector2(0,200)


const VECTOR_NORMAL = Vector2(0, -1)


func _physics_process(delta):
	
	move_and_slide(movement, VECTOR_NORMAL)
	pass
