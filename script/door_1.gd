extends Area2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		animated_sprite_2d.play("doorclose")
		
		await get_tree().create_timer(2).timeout
	
		
		get_tree().change_scene_to_file("res://scene/world.tscn")
	
