extends Node2D

func _ready():
	$AnimationPlayer.play("idle")

func _on_NpcCallIconBlack_pressed():
	get_tree().change_scene("res://scenes/game-menu/Menu.tscn")
	pass
