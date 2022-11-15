extends KinematicBody2D


var vel_run = 400
var velocity = Vector2()

func _get_input():
	velocity.x = 0
	var left = Input.is_action_pressed("ui_left")
	var right = Input.is_action_pressed("ui_right")
	
	if right:
		velocity.x += vel_run
		$Cheems.flip_h = velocity.x < 0
	elif left:
		velocity.x -= vel_run
		$Cheems.flip_h = velocity.x < 0
		

func _physics_process(delta):
	_get_input()
	velocity= move_and_slide(velocity, Vector2(0,0))


func _on_Area2D_area_entered(area):
	get_tree().call_group("Street","_anxiety")
	pass 
