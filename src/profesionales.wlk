import universidades.*

// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
	
	method cobrarImporte(monto){
		asociacionProfesionalesDelLitoral.totalRecibidoPorDonaciones(asociacionProfesionalesDelLitoral.totalRecibidoPorDonaciones() + monto)
	}
}

// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method honorariosPorHora(){
		return universidad.honorariosPorHoraRecomendados()
	}
	
	method provinciasDondePuedeTrabajar(){
		return [universidad.provincia()]
	}
	
	method cobrarImporte(monto){
		self.universidad().totalRecibidoPorDonaciones(self.universidad().totalRecibidoPorDonaciones() + monto / 2)
	}
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var universidad
	var property provinciasDondePuedeTrabajar
	var property honorariosPorHora
	var totalRecaudado = 0
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method cobrarImporte(monto){
		totalRecaudado += monto
	}
	
	method pasarDinero(profesionalLibre, monto){
		totalRecaudado -= monto
		profesionalLibre.cobrarImporte(monto)
	}
}
