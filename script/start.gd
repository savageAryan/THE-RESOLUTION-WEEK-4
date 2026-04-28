extends Control

@onready var button: Button = $Button
@onready var button_2: Button = $Button2
@onready var button_3: Button = $Button3



func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/world.tscn")
	



func _on_button_2_pressed() -> void:
	get_tree().quit()


func _on_button_3_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/screencont.tscn")
