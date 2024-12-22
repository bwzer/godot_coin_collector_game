extends Node2D

var score = 0

@onready var rich_text_label_node = $CharacterBody2D/Camera2D/VScrollBar/Label
@onready var label2_node = $CharacterBody2D/Camera2D/VScrollBar/Label2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	rich_text_label_node.text = "Test"

func _on_coin_coin_taken() -> void:
	print("test")
	score += 1
	rich_text_label_node.text = str("Coin: ", score)
	print()
	


func _show_victory_message() -> void:
	#rich_text_label_node = $CharacterBody2D/Camera2D/RichTextLabel
	
	rich_text_label_node.text = str("You WON!")
	#rich_text_label_node.visible = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rich_text_label_node.scale.x = 1
	rich_text_label_node.scale.y = 1
	if score == 5:
		label2_node.text = "Won: True"
	else:
		label2_node.text = "Won: False"
	#var sprite_node = $CharacterBody2D/Player
	#if sprite_node.scale.y >= 2 and sprite_node.scale.x >= 2:
		#_show_victory_message()
