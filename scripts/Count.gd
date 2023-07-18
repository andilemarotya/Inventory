extends Label

@export var player: Node #the player node

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	text = str(GameManager.item_count)

