extends TileMapLayer
const BANANAS = preload("uid://ugrkdbyrnbow")
const CHERRY = preload("uid://cwo2uqc4l7e56")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	banana_loop()
	cheery_loop()
func cheery_loop():
	while true:
		await get_tree().create_timer(7).timeout
		
		var cherr_copy = CHERRY.instantiate()
		add_child(cherr_copy)
	
		var rect = get_used_rect()
		
		var random_cell = Vector2i(
			randi_range(rect.position.x, rect.end.x - 1),
			randi_range(rect.position.y,rect.end.y - 1)
			
		)
		cherr_copy.global_position = map_to_local(random_cell)
		
func banana_loop():
	while true:
		await get_tree().create_timer(7).timeout
		
		var banana_copy = BANANAS.instantiate()
		add_child(banana_copy)
	
		var rect = get_used_rect()
		
		var random_cell = Vector2i(
			randi_range(rect.position.x, rect.end.x - 1),
			randi_range(rect.position.y,rect.end.y - 1)
			
		)
		banana_copy.global_position = map_to_local(random_cell)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
