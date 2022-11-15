extends Node2D

var calls = 0

func _ready():
	$TextContainer.hide()
	$TextContainer2.hide()
	$AnimationPlayer.play("fadeIN")
	$Timer.start()
	pass 



func _on_Timer_timeout():
	if calls == 0:
		$TextContainer2.show()
		calls = 1
	elif calls == 1:
		$TextContainer2.hide()
		$AnimationPlayer.play("elipsis")
		calls = 2
	elif calls == 2:
		$TextContainer.show()
		calls = 3
	elif calls == 3:
		get_tree().change_scene("res://scenes/thanks/Thanks.tscn")
	pass 
