extends CanvasLayer

@onready var animation_player = $AnimationPlayer
var target_scene_path: String = ""


func change_scene_with_transition(target_scene: String):
	target_scene_path = target_scene
	animation_player.play("fade_in_out")


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "fade_in_out":
		get_tree().change_scene_to_file(target_scene_path)
