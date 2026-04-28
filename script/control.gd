extends Control
var total_time_in_sec = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _on_timer_timeout() -> void:
	total_time_in_sec += 1
	var m = int(total_time_in_sec / 60.0)
	var s = total_time_in_sec - m * 60
	$Label.text = '%02d:%02d' % [m, s]
