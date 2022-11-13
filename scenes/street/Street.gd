extends Node2D

var AnxietyLevel = 0
var AnxietyMax = 50


func _ready():
	
	pass


func _anxiety():
	if AnxietyLevel < AnxietyMax:
		AnxietyLevel = AnxietyLevel + 10
		$AnxietyBar.value = AnxietyLevel
	elif AnxietyLevel >= AnxietyMax:
		print("game over")
	pass


func _on_Timer_timeout():
	$AnxietyDialog.hide()
	pass
