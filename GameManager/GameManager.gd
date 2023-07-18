extends Node

signal itemCountUpdated(UpCount: int)


#number of items we have player has on their inventory
var item_count: int = 0

#Player's initial health
var playerHealth = 100

#This is where we will store our Inventory node and 
var Inventory

var enemy
# Called when the node enters the scene tree for the first time.
func _ready():
	Inventory = get_tree().get_first_node_in_group("playerInv")
	Inventory.inventory_item_count_updated.connect(_on_inventory_item_count_updated)
	
	enemy = get_tree().get_first_node_in_group("Enemy")
	enemy.applyDamage.connect(player_health_down)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_inventory_item_count_updated(count: int):
	item_count = count
	print("Item count:", item_count)  # Replace this with your desired logic to handle the item count

	itemCountUpdated.emit(item_count)
	# For example, you can trigger events or actions based on the item count

func player_health_down(damage: int):
	playerHealth = playerHealth - damage
	print("health is now"+ playerHealth)
