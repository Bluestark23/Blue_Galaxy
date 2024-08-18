extends Node2D

var asterorid  =  preload("res://Scenes/asteroid.tscn") #se llama a asteroid.tscn

@onready var timer = get_node("SpawnTimer")
@onready var next_wave = get_node("UI/Control/Next_wave-text")

func _process(delta):#checar porque el contador no esta contando correctamente
	if Global.wave_count == 5:
		wave_check()
func wave_check():
	timer.stop()
	print("stop")
	timer.set_wait_time(2)
	next_wave.visible = true
	timer.start()


func _ready():
	pass


func _on_spawn_timer_timeout():
	next_wave.visible = false
	
	
	var asteroid_instance = asterorid.instantiate()
	add_child(asteroid_instance)#se añade como un nodo hijo
	asteroid_instance.position = $spawnlocation.position #se asigna la posicion del spawnlocation
	
	#Este poceso es aleatoro para ir cambiando la posicion del spawnlocation
	var nodes = get_tree().get_nodes_in_group("spawn")#
	var node = nodes[randi() % nodes.size()]
	var position = node.position
	$spawnlocation.position = position

