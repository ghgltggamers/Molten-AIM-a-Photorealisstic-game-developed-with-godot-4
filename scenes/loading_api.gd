extends Node3D


var load_scene = "res://scenes/main_lobby.tscn";

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Control/ProgressBar.value += 1;
	if ($Control/ProgressBar.value > 99):
		get_tree().change_scene_to_file(load_scene);
