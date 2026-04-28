extends Area2D
@onready var animation_player: AnimationPlayer = $"../AnimationPlayer"
@onready var button: Button = $"../Button"
@onready var animated_sprite_2d: AnimatedSprite2D = $"../AnimatedSprite2D"
@onready var player: CharacterBody2D = $"../player"


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		animated_sprite_2d.visible = true
		button.visible = true
		animation_player.play("endwin")
		player.process_mode = Node.PROCESS_MODE_DISABLED
		player.visible = false


func _on_button_pressed() -> void:
	get_tree().quit()
