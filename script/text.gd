extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if str(GameManager.get_score()) >= str(30):
		text = "YAY!! I CAN GO HOME AND SLEEP"
		
