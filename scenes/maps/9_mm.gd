extends Node3D

var fireable = true;
var shots:int = 0;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if (Input.is_action_just_pressed("FIRE")):
		if fireable:
			$"../gun fire".play();
			$"../gun".play("fire");
			fireable = false;
			$"../RayCast3D".target_position.y = -1;
			$"../../../../gun fire delay".start();
			$CSGTorus3D.show();
			$"../../../../fire".start();
			shots += 1;
			$"../../../../UI/shots/value".text = str(shots);
			


func _on_gun_fire_delay_timeout() -> void:
	fireable = true;
	$"../RayCast3D".target_position.y = -2000;


func _on_fire_timeout() -> void:
	$CSGTorus3D.hide();
