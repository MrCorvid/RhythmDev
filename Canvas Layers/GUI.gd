extends CanvasLayer

onready var pauseButton = $"Control/PauseButton"
onready var liveCount = $"Control/LiveCount"

onready var heart1 = $"Control/HBoxContainer/Sprite"
onready var heart2 = $"Control/HBoxContainer/Sprite2"
onready var heart3 = $"Control/HBoxContainer/Sprite3"

onready var heartFull = preload("res://Images/HUD/HeartFull.png")
onready var heartEmpty = preload("res://Images/HUD/HeartEmpty.png")

func update_GUI(livesLeft):
	liveCount.text = str(livesLeft)
	
	if(livesLeft == 3):
		heart1.texture = heartFull
		heart2.texture = heartFull
		heart3.texture = heartFull
	elif(livesLeft == 2):
		heart1.texture = heartFull
		heart2.texture = heartFull
		heart3.texture = heartEmpty
	elif(livesLeft == 1):
		heart1.texture = heartFull
		heart2.texture = heartEmpty
		heart3.texture = heartEmpty
	else:
		heart1.texture = heartEmpty
		heart2.texture = heartEmpty
		heart3.texture = heartEmpty

func _on_PauseButton_pressed():
	get_tree().call_group("PauseScreen", "togglePause")

func togglePauseButton():
	if(pauseButton.is_visible()):
		pauseButton.hide()
	else:
		pauseButton.show()
