extends Light2D


var a=1
func _ready():
	position=Vector2(1200,600)
	set_process(true)
func _process(delta):
	if(position.x<1400&&a):
		translate(Vector2(100*delta,0))
	elif(position.x<1200):
		a=1
	else:
		a=0
		translate(Vector2(-100*delta,0))