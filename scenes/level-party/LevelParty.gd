extends Node2D


var CorrectSelection = false
var Selection = false
var DialogSequence = 0

var TextGlobeOne = str(" ")
var TextGlobeTwo = str(" ")
var TextGlobeThree = str(" ")
var TextGlobeFour = str (" ")

var GameStage = 1
var ButtonSelection = false
# ---- [ DIALOGOS ] ----

# ---- [ DIALOGOS DE INTRODUCCIÓN] ----
var CDialogue1 = "¿Aló? ¿Me escuchas bien? Hay demasiado ruido..."
var CDialogue2 = "Eemm, eeeh... no me siento bien. De repente, todo se ve... se siente enorme. O yo estoy pequeñito? Aaagh es muy ruidoso!"
# C DE CHEMSITO
var FDialogue1 = "Aló, te escucho. Veo que finalmente decidiste ir a la fiesta. ¿Pasa algo?"
var FDialogue2 = "Ey, te escucho agitado. Despacio, dime ¿Qué sientes?"
# F DE FLOOPA

# ---- [ DIALOGOS DE FEEDBACK ] ----
# ELECCION INCORRECTA
var FWrong1 = "Ahi vas de nuevo, siempre decis lo mismo cuando no encuentras algo de tu interés"
var FWrong2 = "Baah ¿Qué dices? ¡Has tomado mucho, borracho!"
var FWrong3 = "Pues claro, si solo escuchas a esa Miku tuya ¡Otaku!"
var FWrong4 = "¿Ya estás hablando así de nuevo? ¡No puedo tomarte en serio!"
var FWrong5 = "¿Qué estás diciendo? ¿Te agregaron algo en la bebida? ¡Ya deja de beber!"
# ELECCION CORRECTA
var FCorrect1 = "¿Tienes frio? ¿Cómo que una presión? ¿Te han golpeado o tal vez hay mucha gente?"
var FCorrect2 = "Si tienes náuseas prueba salir un poco por aire fresco, o ve al baño, todo estará bien"
var FCorrect3 = "Debe haber una enorme multitud transpirando ahí dentro, sal un poco y apártate, ¿Hay algo que pueda hacer?"
var FCorrect4 = "Ey... espera ¿Estás llorando? ¿Hay algo desagradable ahí?"
# DIALOGO DE RESOLUCION
var Fsuccess = "Esta bien, quédate donde estás ahora, iré a buscarte. Te llamaré de nuevo cuando esté cerca"
var FError = "Heeey amigo... creo que tal vez bebiste algo de más. Iré a buscarte pronto, no hagas locuras"

# ---- [ BOTONES ] ----
# INCORRECTOS
var WrongButton1 = "Esta fiesta es aburrida!"
var WrongButton2 = "Teeeeex traanio... Ven a busssscarrrrme!"
var WrongButton3 = "No me gusta esta música"
var WrongButton4 = "Heyy quiero ir a comer unos pamchitozz!"
var WrongButton5 = "No sé amigo, estoy re loco"
# CORRECTOS
var RightButton1 = "Tengo escalofríos... y siento una presión rara en el pecho"
var RightButton2 = "Estoy un poco mareado, no quiero vomitar aquí... sería una situación horrible"
var RightButton3 = "Eeeh... si... siento que me falta un poco el aire"
var RightButton4 = "*shora* Es... estoy un poco asustado, no sé qué pasa. Tengo miedo"
var RightButton5 = "Quiero irme a casa. Puedes venir a buscarme?"


func _ready():
	GlobalMusic._turn_down_volume()
	$"%CheemsDialog".set_text(CDialogue1)
	$Control/DialogueCall/TextContainer1.hide()
	pass
	
func _input(event):
	if event.is_action_released("ui_accept"):
		_dialogue_sequence()
	pass

func _dialogue_sequence():
	if ButtonSelection == true:
		ButtonSelection = false
		
	if DialogSequence == 0:
		$Control/DialogueCall/TextContainer1.show()
		$"%FloppaDialog".set_text(FDialogue1)
		$Control/DialogueCall/TextContainer2.hide()
		DialogSequence = 1
		
	elif DialogSequence == 1:
		$Control/DialogueCall/TextContainer1.hide()
		$"%CheemsDialog".set_text(CDialogue2)
		$Control/DialogueCall/TextContainer2.show()
		DialogSequence = 2
		
	elif DialogSequence == 2:
		$Control/DialogueCall/TextContainer1.show()
		$"%FloppaDialog".set_text(FDialogue2)
		$Control/DialogueCall/TextContainer2.hide()
		DialogSequence = 3
		
	elif DialogSequence == 3 || DialogSequence == 5 || DialogSequence == 7 || DialogSequence == 9 || DialogSequence == 11:
		$Control/DialogueCall/TextContainer1.hide()
		$Control/DialogueCall/TextContainer2.hide()
		$Control/Sprite.hide()
		
		if DialogSequence == 3:
			DialogSequence = 4
		elif DialogSequence == 5:
			DialogSequence = 6
		elif DialogSequence == 7:
			DialogSequence = 8
		elif DialogSequence == 9:
			DialogSequence = 10
		elif DialogSequence == 11:
			DialogSequence = 12
		_buttons_options()
		
	elif DialogSequence == 4:
		$Control/DialogueCall/TextContainer1.show()
		$Control/Sprite.show()
		if CorrectSelection == true:
			$"%FloppaDialog".set_text(FCorrect1)
		if CorrectSelection == false:
			$"%FloppaDialog".set_text(FWrong1)
		DialogSequence = 5
		GameStage = 2
		
	elif DialogSequence == 6:
		$Control/DialogueCall/TextContainer1.show()
		$Control/Sprite.show()
		if CorrectSelection == true:
			$"%FloppaDialog".set_text(FCorrect2)
		if CorrectSelection == false:
			$"%FloppaDialog".set_text(FWrong2)
		DialogSequence = 7
		GameStage = 3
		
	elif DialogSequence == 8:
		$Control/DialogueCall/TextContainer1.show()
		$Control/Sprite.show()
		if CorrectSelection == true:
			$"%FloppaDialog".set_text(FCorrect3)
		if CorrectSelection == false:
			$"%FloppaDialog".set_text(FWrong3)
		DialogSequence =9
		GameStage = 4
		
	elif DialogSequence == 10:
		$Control/DialogueCall/TextContainer1.show()
		$Control/Sprite.show()
		if CorrectSelection == true:
			$"%FloppaDialog".set_text(FCorrect4)
		if CorrectSelection == false:
			$"%FloppaDialog".set_text(FWrong4)
		DialogSequence = 11
		GameStage = 5
		
	elif DialogSequence == 12:
		$Control/DialogueCall/TextContainer1.show()
		$Control/Sprite.show()
		if CorrectSelection == true:
			$"%FloppaDialog".set_text(Fsuccess)
		if CorrectSelection == false:
			$"%FloppaDialog".set_text(FWrong5)
		DialogSequence = 13
		
	elif $"%FloppaDialog".text == FWrong5:
		$"%FloppaDialog".set_text(FError)
	elif $"%FloppaDialog".text == Fsuccess || $"%FloppaDialog".text == FError:
		get_tree().change_scene("res://scenes/diary/diary.tscn")
	
		
		
func _buttons_options():
	if GameStage == 1:
		TextGlobeOne = WrongButton1
		TextGlobeTwo = WrongButton3
		TextGlobeThree = WrongButton5
		TextGlobeFour = RightButton1 # correcto
	elif GameStage == 2:
		TextGlobeOne = WrongButton2
		TextGlobeTwo = RightButton2 # correcto
		TextGlobeThree = WrongButton3
		TextGlobeFour = WrongButton4
	elif GameStage == 3:
		TextGlobeOne = RightButton3 # correcto
		TextGlobeTwo = WrongButton1
		TextGlobeThree = WrongButton5
		TextGlobeFour = WrongButton4
	elif GameStage == 4:
		TextGlobeOne = WrongButton2
		TextGlobeTwo = WrongButton3
		TextGlobeThree = WrongButton4
		TextGlobeFour = RightButton4 # correcto
	elif GameStage == 5:
		TextGlobeOne = WrongButton5
		TextGlobeTwo = WrongButton1
		TextGlobeThree = RightButton5 # correcto
		TextGlobeFour = WrongButton3
	$DialogueOptions/GlobeOne/Label.set_text(TextGlobeOne)
	$DialogueOptions/GlobeTwo/Label.set_text(TextGlobeTwo)
	$DialogueOptions/GlobeThree/Label.set_text(TextGlobeThree)
	$DialogueOptions/GlobeFour/Label.set_text(TextGlobeFour)
	ButtonSelection = true
	pass
	

func _on_GlobeFour_button_down():
	if GameStage == 1 || GameStage == 4:
		CorrectSelection = true
	else:
		CorrectSelection = false
	pass 


func _on_GlobeThree_button_down():
	if GameStage == 5:
		CorrectSelection = true
	else:
		CorrectSelection = false
	pass 


func _on_GlobeTwo_button_down():
	if GameStage == 2:
		CorrectSelection = true
	else:
		CorrectSelection = false
	pass


func _on_GlobeOne_button_down():
	if GameStage == 3:
		CorrectSelection = true
	else:
		CorrectSelection = false
	pass 
