extends Control


func _on_Timer_timeout():
	get_tree().change_scene("res://scenes/game-menu/Menu.tscn")
	pass
