import profesionales.*

class EmpresaDeServicios {
	var property honorario
	var property profesionales
	
	method profesionalesCaros() = profesionales.filter{profesional => profesional.honorariosPorHora() > honorario}
	
	method universidadesFormadoras() = profesionales.map{profesional => profesional.universidad()}.asSet()
	
	method profesionalMasBarato() = profesionales.min{profesional => profesional.honorariosPorHora()}
	
	method provinciaEstaCubierta(provincia) = profesionales.any{
		profesional => profesional.provinciasDondePuedeTrabajar().contains(provincia)
	}
	
	method cuantosEstudiaronEnLaMismaUniversidad(universidad) {
		var profDeMismaUniversidad = profesionales.filter{profesional => profesional.universidad() == universidad}
		
		return profDeMismaUniversidad.size()
	}
	
	method pocoAtractivo(){
		
	}
}
