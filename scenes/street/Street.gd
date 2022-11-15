extends Node2D

var AnxietyLevel = 0
var AnxietyMax = 100
var Anxious = GlobalMusic.anxious
var Dialog = "Ay no puede ser"
var calls = 0

func _ready():
	$Consulting.hide()
	if Anxious == true: 
		$AnxietyDialog/RichTextLabel.text = Dialog
	pass


func _anxiety():
	if AnxietyLevel < AnxietyMax:
		AnxietyLevel = AnxietyLevel + 10
		$AnxietyBar.value = AnxietyLevel
		
		
		if AnxietyLevel == 80:
			$Cheems/Cheems.play("amsiedad2")
			
		elif AnxietyLevel == 40:
			$Cheems/Cheems.play("amsiedad1")
			
	elif AnxietyLevel == AnxietyMax:
		GlobalMusic._anxious()
		get_tree().change_scene("res://scenes/street/Street.tscn")
		
	pass

func _on_Timer_timeout():
	if calls == 0:
		$AnxietyDialog.hide()
		get_tree().call_group("enemy", "_move_enemy")
		$AnimationPlayer.play("pj_walk")
		calls = 1
	elif calls == 1 || calls == 2 || calls == 3:
		calls = calls + 1
	elif calls == 4:
		$Consulting.show()
		$AnimationPlayer.play("appear")
		calls = 5
	elif calls == 5:
		get_tree().change_scene("res://scenes/consulting-room/ConsultingRoom.tscn")
	pass
