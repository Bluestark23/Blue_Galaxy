extends Node2D


func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/level.tscn")
	pass # Replace with function body.


func _on_button_2_pressed():
	get_tree().quit()
	pass # Replace with function body.
