extends StaticBody3D

var can_destroy:bool = true;
var runtime_allowed:bool = true;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func destroy():
	if can_destroy:
		hide();
		can_destroy = false;
		print ("hiden")
		$"../../Player/Head/aim/hit".play();
		$"destroy time".start();
	


func _on_destroy_time_timeout() -> void:
	if !can_destroy:
		show();
		can_destroy = true;
		print ("Shown")
