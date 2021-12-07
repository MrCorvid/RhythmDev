extends CanvasLayer
var enemiesKilled = 0
onready var noteArray = [$"Sprite", $"Sprite2"]
var currentNote = 0

onready var screenHeight = OS.window_size.y
onready var enemy  = get_node("../Enemies/Enemy")
onready var enemy1 = get_node("../Enemies/Enemy2")
onready var enemy2 = get_node("../Enemies/Enemy3")

func _ready():
	$AnimationPlayer.play()

func _physics_process(delta):
	handleNotes()

func _on_TextureButton_button_up():
	if (enemiesKilled == 0):
		enemy.queue_free()
		enemiesKilled += 1
	elif (enemiesKilled == 1):
		enemy1.queue_free()
		enemiesKilled += 1
	elif (enemiesKilled == 2):
		enemy2.queue_free()

func handleNotes():
	if (noteArray[currentNote].position.y >= screenHeight):
		noteArray[currentNote].queue_free()
		currentNote += 1

func _on_TextureButton2_pressed():
	print(enemiesKilled)

func _on_MissNoteButton_pressed():
	get_tree().call_group("SceneManager", "missedNote")
