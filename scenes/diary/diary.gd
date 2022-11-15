extends Control

var septdialog15 = "15 de Semtiembre 2022. Querimdo Diariom… Me compartieron un link a un cover de un cumbión muy popular, uno que le gusta mucho a la abuela de Floopa, está cantado en japonés. Un par de días después de escucharlo ya me sé la lemtra. Ahora podré disfrutar un poquito más de las reuniones navideñas con la familia de Floopa."

var sepdialog23 = "23 de Semtiembre 2022. Querimdo Diariom… En la fiesta de anoche llamé a Floopa mientras estaba borracho… qué vergüemsa…"


var octdialog8 = "8 de Octumbre 2022. Querimdo Diariom… Finalmemte fui a la fiesta, pero empecé a sentirme mal. Llamé a Floopa para que fuera a buscarme y me trajeran de nuevo a casa. Decidí empezar terapia, está cerca de mi casa, pero temgo que ir caminando… ¡Ay que me da amsiedadt!"

var animation = true

func _ready():
	GlobalMusic._play_default_music()
	GlobalMusic._turn_down_volume()
	$DiaryVisibleQuote.play("fadeIN") 
pass


func _on_DiaryVisibleQuote_animation_finished(fadeIN):
	if animation == true:
		$DiaryVisibleQuote.play("visible")
		animation = false
	pass


func _on_NpcCallIconBlack_pressed():
	get_tree().change_scene("res://scenes/house/HouseBG.tscn")
	pass 
