extends Node2D

var animationON = false

func _on_PlayButton_pressed():
	get_tree().change_scene("res://scenes/intro/Introduction.tscn")
	pass


func _on_CreditsButton_pressed():
	get_tree().change_scene("res://scenes/credits/Credits.tscn")
	pass 


func _on_ExitButton_pressed():
	get_tree().quit()
	pass


func _on_Timer_timeout():
	$PlayerHappy.play("smile")
	$Timer2.start()
	if animationON == false:
		$AnimationPlayer.play("idle")
		animationON = true
	elif animationON == true:
		$AnimationPlayer.stop()
		animationON = false
	pass 


func _on_Timer2_timeout():
	$PlayerHappy.play("cry")
	$Timer2.stop()
	pass 
