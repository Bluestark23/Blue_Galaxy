extends CanvasLayer


func _physics_process(delta):
	if Input.is_action_just_pressed("Pausa"):
		get_tree().paused = not get_tree().paused
		$ColorRect.visible = not $ColorRect.visible
		$Label.visible = not $Label.visible
		$Button.visible = not $Button.visible


func _on_button_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/Menú.tscn")
	pass # Replace with function body.
