extends Node


var tile = preload("res://tile.tscn")
@export var size:Vector2
@export var bounds:Vector2
@export var padding:float
var tiles:Array
func _ready():
	for i in size.x:
		for j in size.y:
			var tileinst = tile.instantiate()
			var spawnpos = (Vector2(i,j))*(bounds * padding)
			add_child(tileinst)
			tileinst.transform.origin = spawnpos
			tiles.append(tileinst)
			#get_tree().root.add_child()
	pass # Replace with function body.




func _on_test_1_pressed():
	for t in tiles:
		if t.selected:
			t.type = "test"
	pass # Replace with function body.


func _on_bar_pressed():
	for t in tiles:
		if t.selected:
			t.type = "bar"
	pass # Replace with function body.


func _on_advertisement_pressed():
	for t in tiles:
		if t.selected:
			t.type = "advertisement"
	pass # Replace with function body.


func _on_voleyball_pressed():
	for t in tiles:
		if t.selected:
			t.type = "volleyball"
	pass # Replace with function body.


func _on_pharmacy_pressed():
	for t in tiles:
		if t.selected:
			t.type = "pharmacy"
	pass # Replace with function body.


func _on_desect_pressed():
	for t in tiles:
		t.selected = false
	pass # Replace with function body.


func _on_inverse_pressed():
	for t in tiles:
		t.selected = not t.selected
	pass # Replace with function body.
