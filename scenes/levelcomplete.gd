extends Control

func _ready():
	visible = false
	get_tree().paused = false

func _unhandled_input(event):
	if not visible:
		return

	if event.is_action_pressed("ui_accept"):
		restart()

func restart():
	get_tree().paused = false
	get_tree().reload_current_scene()
