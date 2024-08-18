extends CharacterBody2D

@export var gravity = 100

@export var speed = 4
func _physics_process(delta):
	
	#hotizontal
	var direction_h = Input.get_axis("Izquierda","Derecha")

	#gravedad
	if not is_on_floor():
		velocity.y = velocity.y + gravity * delta
	else:
			velocity.y = 0  # Resetea la velocidad vertical al estar en el suelo

	
	var arriba = Input.is_action_pressed("Arriba")
	if arriba:
		velocity.y = velocity.y - speed
	var abajo = Input.is_action_pressed("Abajo")
	if abajo:
		velocity.y = velocity.y + speed
	var derecha = Input.is_action_pressed("Derecha")
	if derecha:
		velocity.x = velocity.x + speed
	var izquierda = Input.is_action_pressed("Izquierda")
	if izquierda:
		velocity.x = velocity.x - speed
	move_and_slide()
