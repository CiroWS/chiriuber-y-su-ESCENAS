extends Control

var contador:float=0
onready var ppp:bool=false
onready var c:int=0


func _physics_process(delta):
	if ppp==true:
		if c==1:
			$VBoxContainer/HBoxContainer/AnimatedSprite.speed_scale=GLOBAL.random(1,100)
			$VBoxContainer/HBoxContainer/AnimatedSprite2.speed_scale=GLOBAL.random(1,100)
			$VBoxContainer/HBoxContainer/AnimatedSprite3.speed_scale=GLOBAL.random(1,100)
			$VBoxContainer/HBoxContainer/AnimatedSprite.playing=true
			$VBoxContainer/HBoxContainer/AnimatedSprite2.playing=true
			$VBoxContainer/HBoxContainer/AnimatedSprite3.playing=true
		contador+=1
		print(contador)
		if contador==200:
			$VBoxContainer/HBoxContainer/AnimatedSprite3.playing=false
		if contador==300:
			$VBoxContainer/HBoxContainer/AnimatedSprite2.playing=false
		if contador==400:
			$VBoxContainer/HBoxContainer/AnimatedSprite.playing=false
			ppp=false
			contador=0
			$Button.disabled=false
		c=0


func _on_Button_pressed():
	ppp=true
	c=1
	$Button.disabled=true
	print("push")
