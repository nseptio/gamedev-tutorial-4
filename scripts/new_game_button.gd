extends LinkButton

@export var scene_to_load: String


func _on_pressed() -> void:
	Transition.change_scene_with_transition(str("res://scenes/" + scene_to_load + ".tscn"))
