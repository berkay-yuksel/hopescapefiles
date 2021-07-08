extends CollisionShape2D

func _ready():
		if Input.is_action_pressed("ui_right")&&Input.is_action_pressed("ui_down"):
			get_node("CollisionShape2D").scale = Vector2(1,0.7)
		if Input.is_action_pressed("ui_left")&&Input.is_action_pressed("ui_down"):
			get_node("CollisionShape2D").scale = Vector2(1,0.7)