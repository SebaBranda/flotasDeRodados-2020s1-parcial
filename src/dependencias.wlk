import autos.*
import trafic.*

class Dependencia{

	const flota = []	
	var cantidadEmpleados = 0
	
	method cantidadEmpleados(cant) { cantidadEmpleados = cant }
	method cantidadEmpleados(){ return cantidadEmpleados }
	method agregarAFlota(rodado) {
		flota.add(rodado)	
	}
	
	method cantidadDeAutos(){
		return flota.size()
	}
	
	method  quitarDeFlota(rodado) {
		flota.remove(rodado)
	}
	
	method  pesoTotalFlota() {
		return flota.sum({auto=>auto.peso()})
	}
	
	method  estaBienEquipada(){
		return flota.size() >= 3 and flota.all({auto=>auto.velocidadMaxima() > 100})
	}
	
	method   capacidadTotalEnColor(color) {
		return flota.filter({auto=>auto.color() == color }).sum({auto=>auto.capacidad()})
		
	}
	
	method  colorDelRodadoMasRapido() {
		return flota.max({auto=>auto.velocidadMaxima()}).color()
	}
	
	method capacidadFlota(){
		return flota.sum({auto=>auto.capacidad()})
	}
	
	method  capacidadFaltante() {
		return cantidadEmpleados - self.capacidadFlota()
	}
	
	method  esGrande() {
		return cantidadEmpleados >= 40 and flota.size() >= 5
	}
	
}
