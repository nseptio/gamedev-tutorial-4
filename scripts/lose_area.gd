extends Area2D

@export var scene_name: String


func _on_Area_Trigger_body_entered(body):
	var current_scene = get_tree().get_current_scene().get_name()
	if body.get_name() == "Player":
		if current_scene == scene_name:
			Global.lives -= 1

		if Global.lives == 0:
			get_tree().call_deferred("change_scene_to_file", str("res://scenes/GameOver.tscn"))
		else:
			print("Global lives: ", Global.lives)
			get_tree().call_deferred(
				"change_scene_to_file", str("res://scenes/" + scene_name + ".tscn")
			)
	if body.get_name() == "TileMapLayer":
		get_parent().queue_free()
