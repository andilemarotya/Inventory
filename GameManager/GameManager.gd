extends Node

#number of items we have player has on their inventory
var item_count: int = 0


#Player's initial health
var playerHealth = 100


# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_inventory_item_count_updated(count: int):
	item_count = count
	print("Item count:", item_count)  # Replace this with your desired logic to handle the item count
	# Additional logic based on the item count can be added here
	# For example, you can trigger events or actions based on the item count
