extends Node2D


func _on_PlayButton_pressed():
	get_tree().change_scene("res://scenes/intro/introduction.tscn")
	pass


func _on_CreditsButton_pressed():
	get_tree().change_scene("res://scenes/credits/Credits.tscn")
	pass 


func _on_ExitButton_pressed():
	get_tree().quit()
	pass
