extends Control



func _on_texture_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Root/root.tscn")


func _on_sound_track_finished() -> void:
	$SoundTrack.play()
