@tool
extends EditorPlugin

# The container to display the status of the user
var status_container : Node
var editor_interface : EditorInterface

func _enter_tree() -> void:
	# INSTANTIATION
	# Instantiating interfaces
	editor_interface = get_editor_interface()
	
	# Instantiating the status container and loading it into the editor
	status_container = preload("res://addons/gdvim/editor_control/status_container.tscn").instantiate()
	add_control_to_container(EditorPlugin.CONTAINER_INSPECTOR_BOTTOM, status_container)


func _exit_tree() -> void:
	# CLEANING UP
	# Removing the control node from the editor and freeing memory
	remove_control_from_container(EditorPlugin.CONTAINER_INSPECTOR_BOTTOM, status_container)
	status_container.free()

# Handles input and then sends it off to relevant class
func _input(event: InputEvent) -> void:
	# If InputEvent was changing the script, send input to StatusContainerController
	# If InputEvent was keyboard input, send to ModeController
	# 	ModeController will then determine to send to NormalModeController
	var mouse_input: InputEventMouseButton = event as InputEventMouseButton
	if mouse_input:
		if mouse_input.pressed:
				var file_path : Label = status_container.get_node("FileInformationContainer/FilePath")
				file_path.set_text(editor_interface.get_current_path()) # Doesn't work because it only gets path to script open in FileSystem dock
