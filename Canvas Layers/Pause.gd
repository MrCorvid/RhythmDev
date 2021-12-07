extends Control

func _input(event):
	if event.is_action_pressed("pause"):
		togglePause()

func _on_Resume_pressed():
	togglePause()

func togglePause():
	var new_pause_state = not get_tree().paused
	get_tree().paused = new_pause_state
	visible = new_pause_state
	get_tree().call_group("GUI", "togglePauseButton")

func _on_MainMenu_pressed():
	get_tree().paused = false
	get_tree().change_scene("res://Scenes/MainMenu.tscn")

func _on_Settings_pressed():
	get_tree().call_group("Settings", "toggleSettings")
