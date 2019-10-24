extends KinematicBody2D
var motion = Vector2()
var speed = int()
var g = int()
var jump = int();
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const UP = Vector2(0,-1);
# Called when the node enters the scene tree for the first time.
func _ready():
	speed=400;
	g=30;
	jump=700;
	pass # Replace with function body.
func _physics_process(delta):
	                #Управление
	     #Вправо
	if Input.is_action_pressed("right"):
		motion.x=speed;
	     #Влево
	elif Input.is_action_pressed("left"):
		motion.x=-speed;
		
	else: motion.x=0;
	if is_on_floor():
		if Input.is_action_pressed("up"):
			motion.y=-jump;
	else:
		motion.y+=g; #Ускорение падения
		
	motion = move_and_slide(motion,UP);#Гравитация
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
