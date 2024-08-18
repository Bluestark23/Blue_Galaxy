extends ParallaxBackground
#Puedes usar este metodo cuando no tienes una camara
func _process(delta): 
	# Aumenta la posición vertical de la capa paralaje para crear una animación
	$ParallaxLayer.motion_offset.y += 50 * delta
