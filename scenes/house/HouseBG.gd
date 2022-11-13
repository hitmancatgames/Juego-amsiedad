extends Node2D


func _ready():
	$NpcCallIconBlack.hide()
	$AnimationPlayer.play("playScene")
	pass

func _on_AnimationPlayer_animation_finished(anim_name):
	$NpcCallIconBlack.show()
	pass 


func _on_NpcCallIconBlack_pressed():
	get_tree().change_scene("res://scenes/street/Street.tscn")
	pass 
