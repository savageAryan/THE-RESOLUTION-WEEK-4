extends Area2D
@onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer




func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		GameManager.bananas += 1
		audio_stream_player.play()
		print(GameManager.cheries)
		await get_tree().create_timer(0.1).timeout
		queue_free()
		
