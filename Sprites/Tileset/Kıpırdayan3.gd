extends Sprite


var a=1
func _ready():
	
	set_process(true)
func _process(delta):
	if(position.y<730&&a):
		translate(Vector2(0,100*delta))
	elif(position.y<430):
		a=1
	else:
		a=0
		translate(Vector2(0,-100*delta))
