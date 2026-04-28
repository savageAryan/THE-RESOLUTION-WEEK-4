extends Control
@onready var label: Label = $Panel/Label

@onready var label_1: Label = $Panel2/Label1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	label.text = str(GameManager.cheries)
	label_1.text = str(GameManager.bananas)
