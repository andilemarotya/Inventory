extends Label

@onready var Player =  $"../../../Player"


# Called when the node enters the scene tree for the first time.
func _ready():
	GameManager.itemCountUpdated.connect(update_item_count)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# Update the item count in the label
func update_item_count(items: int):
	text = str(items)
	_ready()
