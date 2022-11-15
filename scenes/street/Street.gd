extends Node2D

var AnxietyLevel = 0
var AnxietyMax = 100


func _ready():
	
	pass


func _anxiety():
	if AnxietyLevel < AnxietyMax:
		AnxietyLevel = AnxietyLevel + 10
		$AnxietyBar.value = AnxietyLevel
		
		if AnxietyLevel == 80:
			$Cheems/Cheems.play("amsiedad2")
			
		elif AnxietyLevel == 40:
			$Cheems/Cheems.play("amsiedad1")
			
	elif AnxietyLevel >= AnxietyMax:
		print ("game over")
	pass


func _on_Timer_timeout():
	$AnxietyDialog.hide()
	get_tree().call_group("enemy", "_move_enemy")
	pass
