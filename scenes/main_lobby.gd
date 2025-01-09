extends Node3D

var show_start = true;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_start_btn_button_down() -> void:
	$click.play()
	if show_start:
		$"Control/box-lab".show();
		show_start = false;
	else:
		$"Control/box-lab".hide();
		show_start = true;


func _on_gd_button_down() -> void:
	get_tree().change_scene_to_file("res://scenes/maps/box_lab_gd.tscn");


func _on_low_button_down() -> void:
	get_tree().change_scene_to_file("res://scenes/maps/box_lab_low.tscn")
	
	


func _on_medium_button_down() -> void:
	get_tree().change_scene_to_file("res://scenes/maps/box_lab.tscn")



func _on_high_button_down() -> void:
	get_tree().change_scene_to_file("res://scenes/maps/box_lab_high.tscn")
	
	


func _on_extreme_button_down() -> void:
	get_tree().change_scene_to_file("res://scenes/maps/box lab extreme.tscn")


func _on_gd_mouse_entered() -> void:
	$hover.play();


func _on_low_mouse_entered() -> void:
		$hover.play();


func _on_medium_mouse_entered() -> void:
		$hover.play();


func _on_high_mouse_entered() -> void:
		$hover.play();


func _on_extreme_mouse_entered() -> void:
		$hover.play();


func _on_start_btn_mouse_entered() -> void:
		$hover.play();


func _on_bgm_finished() -> void:
	$bgm.play();


func _on_src_mouse_entered() -> void:
	$hover.play();



func _on_src_button_down() -> void:
	$click.play();
	OS.shell_open("https://github.com/ghgltggamers/Molten-AIM-a-Photorealisstic-game-developed-with-godot-4")
