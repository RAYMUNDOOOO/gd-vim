@tool
extends EditorPlugin

# The container to display the status of the user
var status_container : Node

func _enter_tree() -> void:
	# INSTANTIATION
	# Instantiating the status container and loading it into the editor
	status_container = preload("res://addons/gdvim/editor_control/status_container.tscn").instantiate()
	add_control_to_container(EditorPlugin.CONTAINER_INSPECTOR_BOTTOM, status_container)


func _exit_tree() -> void:
	# CLEANING UP
	# Removing the control node from the editor and freeing memory
	remove_control_from_container(EditorPlugin.CONTAINER_INSPECTOR_BOTTOM, status_container)
	status_container.free()
