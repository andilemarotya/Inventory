extends Label

@export var items = 0
@onready var Player =  $"../../../Player"
@onready var gameManager = $"../../../GameManager"

# Called when the node enters the scene tree for the first time.
func _ready():
	
	update_item_count()
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# Update the item count in the label
func update_item_count():
	items = gameManager.item_count
	text = str(items)
