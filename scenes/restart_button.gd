extends Button

@export var sceneName: String = "Level1"


func _on_pressed() -> void:
	get_tree().change_scene_to_file(str("res://scenes/" + sceneName + ".tscn"))
