import universidades.*
import profesionales.*

class Institucion {
	var property universidadesReconocidas
	
	method puedeSerAtendida(profesional){
		return universidadesReconocidas.any{universidad => universidad == profesional.universidad()}
	}
}


class Persona {
	var property provincia
	
	method puedeSerAtendida(profesional){
		// TODO Mejor contains
		return profesional.provinciasDondePuedeTrabajar().any{prov => prov == provincia}
	}
	
}