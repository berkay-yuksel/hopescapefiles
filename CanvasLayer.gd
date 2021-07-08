extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	
	if event.is_action_pressed("ui_cancel"):
		$Background.visible=!$Background.visible
		$Button.visible=!$Button.visible
		$Button2.visible=!$Button2.visible

		get_tree().paused=!get_tree().paused
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	$Background.visible=!$Background.visible
	$Button.visible=!$Button.visible
	$Button2.visible=!$Button2.visible

	get_tree().paused=!get_tree().paused
pass # Replace with function body.




func _on_Button2_pressed():
	$Background.visible=!$Background.visible
	$Button.visible=!$Button.visible
	$Button2.visible=!$Button2.visible
	get_tree().change_scene("res://Sprites/Tileset/FirstScene..tscn")
	get_tree().paused=!get_tree().paused
	pass # Replace with function body.
