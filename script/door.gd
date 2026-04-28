extends Area2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		if str(GameManager.get_score()) >= str(30):
			animated_sprite_2d.play("dooropen")
		
			await get_tree().create_timer(2).timeout
	
		
			get_tree().change_scene_to_file("res://scene/house.tscn")
	
