extends Area2D

@export var sceneName = "LoseScreen"


func _on_Area_Trigger_body_entered(body):
	print(body.get_name())
	if body.get_name() == "Player":
		get_tree().change_scene_to_file(str("res://scenes/" + sceneName + ".tscn"))
	if body.get_name() == "TileMapLayer":
		get_parent().queue_free()
