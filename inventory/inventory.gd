extends PanelContainer

signal inventory_item_count_updated(item_count: int)

const Slot = preload("res://slot.tscn")

@onready var item_grid: GridContainer = $MarginContainer/ItemGrid

func set_inventory_data(inventory_data: InventoryData):
	inventory_data.inventory_updated.connect(populate_item_grid)
	populate_item_grid(inventory_data)

func populate_item_grid(inventory_data: InventoryData) :  #We'll use this func as Inventory updates in the future
	var item_count = 0
	for child in item_grid.get_children():
		child.queue_free()                   						#clearing the item grid's children
		
	for slot_data in inventory_data.slot_datas:
		var slot = Slot.instantiate()
		item_grid.add_child(slot)
		
		slot.slot_clicked.connect(inventory_data.on_slot_clicked)
		
		if slot_data:
			slot.set_slot_data(slot_data)
			item_count += 1
	
	emit_signal("inventory_item_count_updated", item_count)
