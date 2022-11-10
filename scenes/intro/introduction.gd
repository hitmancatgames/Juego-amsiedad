extends Node2D


var correct = false
var timerCalls = 0

func _ready():
	$helpDialogue.hide()
	$AnimationPlayer.play("Party")
	pass 


func _on_AnimationPlayer_animation_finished(Party):
	$AnimationPlayer.play("Chems_dance")
	$Timer.start()
	pass 


func _on_Timer_timeout():
	if timerCalls == 0:
		$AnimationPlayer.queue("Chems_dance")
		$LevelBG/PlayerHappy.play("normal")
		$AnimationPlayer.play("people_dance")
	elif timerCalls == 1:
		$LevelBG/PartyPeople.play("green")
		$LevelBG/PlayerHappy.play("cry")
	elif timerCalls == 2:
		$LevelBG/PlayerHappy.play("cry2")
	elif timerCalls == 3:
		$LevelBG/PlayerHappy.play("cryCel")
		$helpDialogue.show()
	elif timerCalls == 4:
		$Timer.stop()
		get_tree().change_scene("res://scenes/level-party/LevelParty.tscn")
	timerCalls += 1
	pass 
