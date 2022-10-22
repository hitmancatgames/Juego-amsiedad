extends Node2D


var correct = false


func _ready():
	pass 


func _on_RespButton_pressed():
	correct == true
	change_dialog()
	$HBoxContainer/RespButton.hide
	pass

func _on_RespButton2_pressed():
	correct == false
	change_dialog()
	$HBoxContainer/RespButton2.hide
	pass

func _on_RespButton3_pressed():
	correct == false
	change_dialog()
	$HBoxContainer/RespButton3.hide
	pass

func _on_RespButton4_pressed():
	correct == false
	change_dialog()
	$HBoxContainer/RespButton4.hide
	pass

func _on_RespButton5_pressed():
	correct == false
	change_dialog()
	$HBoxContainer/RespButton5.hide
	pass

func _on_RespButton6_pressed():
	correct == false
	change_dialog()
	$HBoxContainer/RespButton6.hide
	pass

func change_dialog():
	if correct == true:
		$FloppaDialog.text = "Feedback correcto"
	else: 
		$FloppaDialog.text = "Feedback incorrecto"
	pass
