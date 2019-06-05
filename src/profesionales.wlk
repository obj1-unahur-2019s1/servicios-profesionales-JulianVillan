import universidad.*

class Profesionales {
	var universidad
	
	method universidad() = universidad 
	method universidad(univ) { universidad = univ }
}


class ProfesionalAsociado inherits Profesionales {
	
	method provinciasDondePuedeTrabajar() = #{"Entre Ríos", "Corrientes", "Santa Fe"} 
	method honorariosPorHora() = 3000 
}


class ProfesionalVinculado inherits Profesionales {
	 
	method provinciasDondePuedeTrabajar() = universidad.provincia() 
	method honorariosPorHora() = universidad.honorarios()
}


class ProfesionalLibre inherits Profesionales {
	//var provincias = []
	var property honorariosPorHora
	var property provinciasDondePuedeTrabajar
	
	//method provinciasDondePuedeTrabajar(provincia){ provincias.add(provincia)}
}



