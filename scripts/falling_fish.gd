extends CollisionShape2D

@export var sceneName = "LoseScreen"
@export var obstacleName = "FallingFish"


func _on_FallArea_body_entered(body):
	if body.get_name() == "Player":
		get_tree().change_scene_to_file(str("res://scenes/" + sceneName + ".tscn"))
	elif body.get_name() == obstacleName:
		pass
	else:
		get_parent().queue_free()
