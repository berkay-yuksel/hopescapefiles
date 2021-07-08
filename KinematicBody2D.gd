extends KinematicBody2D

var small=1.483
var life =3
const UP = Vector2(0,-1)
var motion = Vector2()
func _physics_process(delta):

	motion.y+=10
	scale=Vector2(1,1)
	if is_on_floor():
		if Input.is_action_pressed("ui_right"):
			motion.x=12500*delta
			$Sprite.flip_h=false
			$Sprite.play("run")
		elif Input.is_action_pressed("ui_left"):
			$Sprite.flip_h=true
			motion.x=-12500*delta
			$Sprite.play("run")
		else:
			motion.x=0
			$Sprite.play("idle")
		if Input.is_action_just_pressed("ui_up"):
			$Sprite.play("jump")
			motion.y=-25000*delta
		if Input.is_action_pressed("ui_right")&&Input.is_action_pressed("ui_down"):
			scale = Vector2(1,0.7)
			$Sprite.play("slide")
			motion.x=13500*delta
			$Sprite.flip_h=false
		if Input.is_action_pressed("ui_left")&&Input.is_action_pressed("ui_down"):
			scale = Vector2(1,0.7)
			$Sprite.play("slide")
			motion.x=-13500*delta
			$Sprite.flip_h=true
	else:
		if Input.is_action_pressed("ui_right"):
			motion.x=12500*delta
			$Sprite.flip_h=false
			$Sprite.play("run")
		elif Input.is_action_pressed("ui_left"):
			$Sprite.flip_h=true
			motion.x=-12500*delta
			$Sprite.play("run")
		else:
			motion.x=0
			$Sprite.play("jump")
	move_and_slide(motion,UP)

func _on_Area2D_body_entered(body):
	life-=1
	small=small*0.6
	$Light2D.scale=Vector2(small,10.37)
	""" $Light2D.rotate(-50)""" 
	position=Vector2(25,700)
	if life<1:
		get_tree().change_scene("Win.tscn")

	pass # Replace with function body.




func _on_PortalLvl2_body_entered(body):
	get_tree().change_scene("SecondScene.tscn")	
	pass # Replace with function body.






func _on_Area2D3_body_shape_entered(body_id, body, body_shape, local_shape):
	$AnimatedSprite.play("bleed")
	$AnimatedSprite.visible = !$AnimatedSprite.visible
	print($AnimatedSprite.frame)

	if $AnimatedSprite.animation == "bleed" && $AnimatedSprite.frame:
		$AnimatedSprite.visible = !$AnimatedSprite.visible
		$AnimatedSprite.visible = !$AnimatedSprite.visible
		$AnimatedSprite.stop()
		_on_Area2D_body_entered(body)

	pass # Replace with function body.

