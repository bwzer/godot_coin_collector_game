extends Area2D

signal coin_taken

func _on_body_entered(body: Node2D) -> void:
	body.scale.x += 0.2
	body.scale.y += 0.2

	
	print("Coin is collected")
	coin_taken.emit()
	
	queue_free()
	
