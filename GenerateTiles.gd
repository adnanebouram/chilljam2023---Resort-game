extends Node


var tile = preload("res://tile.tscn")
@export var size:Vector2
@export var bounds:Vector2
@export var padding:int
func _ready():
	for i in size.x:
		for j in size.y:
			var tileinst = tile.instantiate()
			var spawnpos = Vector2(i,j)*bounds + Vector2(padding,padding)
			add_child(tileinst)
			tileinst.transform.origin = spawnpos
			#get_tree().root.add_child()
	pass # Replace with function body.

