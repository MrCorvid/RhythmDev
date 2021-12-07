extends Control

onready var settingsState = false

func _on_x_pressed():
	print("what")
	visible = false

func toggleSettings():
	visible = true



