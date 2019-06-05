import universidades.*
import profesionales.*

class Empresa {
	var property empleados = #{}
	var property honorarioReferencia
	
	method contratar(newEmpleado) { empleados.add(newEmpleado)}
	
	method cuantosEstudiaronEn(newUniversidad) = empleados.count{ e => e.universidad() == newUniversidad }

	method profesionalesCaros() = empleados.filter{ e => e.honorariosPorHora() > honorarioReferencia }

	method elProfesionalMasBarato() = empleados.min { e => e.honorariosPorHora()}

	method universidadesFormadoras() = empleados.map{ e => e.universidad() }.asSet()	

	method esAcotado() = empleados.any { e => e.provinciasDondePuedeTrabajar().size() > 3
					 //empleados.all{e=> e.provinciasDondePuedeTrabajar().size() <= 3}
	}
}
