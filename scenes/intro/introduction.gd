extends Node2D


func _ready():
	pass


func _on_AnimatedSprite_animation_finished():
	get_tree().change_scene("res://scenes/level-party/LevelParty.tscn")
	pass
