extends Node

var lives = 3
var enemiesKilled = 0
var playerHealth = 100

func _ready():
	add_to_group("SceneManager")
	update_GUI()

func missedNote():
	get_tree().call_group("Player", "hurt")

func update_GUI():
	get_tree().call_group("GUI", "update_GUI", lives)

func removeLife():
	lives -= 1
	endGame()
	update_GUI()
	if lives < 0:
		runAd()
		refreshLives()

func runAd():
	print("Ad Time")

func refreshLives():
	lives = 3
	update_GUI()

func endGame():
#	get_tree().change_scene("res://Scenes/EndGame.tscn")
	pass
