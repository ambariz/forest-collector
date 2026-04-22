extends Area2D

@onready var sprite = $Sprite2D
@onready var ui = get_tree().get_first_node_in_group("ui")

var opened := false

func _on_body_entered(body):
	if body.name == "player" and not opened:
		opened = true
		open_gate()
		show_win()

func open_gate():
	sprite.texture = load("res://assets/characters/gate-open.png")

func show_win():
	if ui:
		ui.visible = true
		get_tree().paused = true
