extends Node2D


var correct = false
# ---- [ DIALOGOS ] ----

# ---- [ DIALOGOS DE INTRODUCCIÓN] ----
var CDialogue1 = "Aló? Me escuchas bien? Hay demasiado ruido..."
var CDialogue2 = "Eemm, eeeh... no me siento bien. De repente, todo se ve... se siente enorme. O yo estoy pequeñito? Aaagh es muy ruidoso!"
# C DE CHEMSITO
var FDialogue1 = "Aló, te escucho. Veo que finalmente decidiste ir a la fiesta. Pasa algo?"
var FDialogue2 = "Ey, te escucho agitado. Despacio, dime ¿Qué sientes?"
# F DE FLOOPA

# ---- [ DIALOGOS DE FEEDBACK ] ----
# ELECCION INCORRECTA
var FWrong1 = "Ahi vas de nuevo, siempre decis lo mismo cuando no encuentras algo de tu interés"
var FWrong2 = "Baah ¿Qué dices? ¡Has tomado mucho, borracho!"
var FWrong3 = "Pues claro, si solo escuchas a esa Miku tuya ¡Otaku!"
var FWrong4 = "¿Ya estás hablando así de nuevo? No puedo tomarte en serio?"
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
