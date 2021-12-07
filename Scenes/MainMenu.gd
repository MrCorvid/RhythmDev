extends Node2D

func _on_SettingsButton_pressed():
	get_tree().call_group("Settings", "toggleSettings")


func _on_PlayButton_pressed():
	get_tree().change_scene("res://Scenes/SongSelect.tscn")
