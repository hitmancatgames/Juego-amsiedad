extends Node

var MENU = load("res://assets/music/menu.ogg")
var DEFAULT = load("res://assets/music/ambient.ogg")
var PARTY = load("res://assets/music/party_music.ogg")

var CountMusic = 0

func _play_menu_music():
	if CountMusic == 0:
		CountMusic = 1
	$Music.stream = MENU
	$Music.play()
	
func _play_default_music():
	CountMusic = 0
	$Music.stream = DEFAULT
	$Music.play()
	
func _play_party_music():
	$Music.stream = PARTY
	$Music.play()
	
func _turn_down_volume():
	$Music.volume_db = -10
	
func _turn_up_volume():
	$Music.volume_db = +10
