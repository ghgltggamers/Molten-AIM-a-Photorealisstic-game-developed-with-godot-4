extends Node3D

var hits:int = 0;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $Player/Head/aim/RayCast3D.is_colliding():
		var collider = $Player/Head/aim/RayCast3D.get_collider();
		if Input.is_action_just_pressed("FIRE"):
			collider.destroy();
			hits += 1;
			$UI/Hit/value.text = str(hits);


func _on_air_finished() -> void: #when air sound finishes
	$Sound/air.play();


func _on_siren_time_timeout() -> void: # When sire sound is required
	$Sound/siren.play();
	$"siren time".start();
