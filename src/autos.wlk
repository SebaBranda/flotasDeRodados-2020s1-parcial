class  ChevroletCorsa {
	
	var color
	
	method velocidadMaxima() { return 150 }
	method color(){ return color }
	method setColor(unColor){ color = unColor }
	method capacidad(){ return 4 }
	method peso(){ return 1300 }
	
}

class RenaultKwid {
	
	var tanqueAdicional = true
		
	method velocidadMaxima() {return if(tanqueAdicional){110} else {120}}
	method color(){ return "azul" }
	method capacidad(){
		if (tanqueAdicional){ return 3 }
		else{ return 4 }
	}
	method tanqueAdicional(){ return tanqueAdicional }
	method setTanqueAdicional(){ tanqueAdicional = not tanqueAdicional }
	method peso(){return if(tanqueAdicional){1350} else {1200}}
}

class AutosEspeciales {
	
	var capacidad = 0
	var peso = 1300
	var color
	var velocidadMaxima = 0
	
	method velocidadMaxima() { return velocidadMaxima }
	method setVelocidadMaxima(vel) { velocidadMaxima = vel }
	method color(){ return color }
	method setColor(unColor){ color = unColor }
	method capacidad() { return capacidad }
	method setCapacidad(cant){ capacidad = cant }
	method peso(){ return peso }
	method setPeso(unPeso) { peso = unPeso }
}
