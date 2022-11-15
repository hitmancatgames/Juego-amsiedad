extends Node2D

var AnxietyLevel = 0
var AnxietyMax = 100
var Anxious
var Dialog = "Ay no, reintentar"

func _ready():
	if Anxious == true: 
		$AnxietyDialog/RichTextLabel.text = "A"
	pass


func _anxiety():
	if AnxietyLevel < AnxietyMax:
		AnxietyLevel = AnxietyLevel + 10
		$AnxietyBar.value = AnxietyLevel
		Anxious = false
		
		if AnxietyLevel == 80:
			$Cheems/Cheems.play("amsiedad2")
			
		elif AnxietyLevel == 40:
			$Cheems/Cheems.play("amsiedad1")
			
	elif AnxietyLevel >= AnxietyMax:
		Anxious = true
		get_tree().change_scene("res://scenes/street/Street.tscn")
		
	pass

func _on_Timer_timeout():
	$AnxietyDialog.hide()
	get_tree().call_group("enemy", "_move_enemy")
	pass
