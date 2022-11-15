extends KinematicBody2D


var movement = Vector2(0,250)
var ACTIVE_ENEMY = false

const VECTOR_NORMAL = Vector2(0, -1)


func _physics_process(delta):
	if ACTIVE_ENEMY == true:
		move_and_slide(movement, VECTOR_NORMAL)
	pass

func _move_enemy():
	ACTIVE_ENEMY = true


func _on_VisibilityNotifier2D_screen_exited():
	self.queue_free()
	pass 
