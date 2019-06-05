import profesionales.*
import universidades.*
import empresas.*

class Persona {
	var provincia	
	
	method puedeSerAtendido(unProfesional){ unProfesional.provinciasDondePuedeTrabajar().any{ p=> p == provincia}}
}

class Institucion{
	var universidades
	
	method puedeSerAtendido(unProfesional){ unProfesional.provinciasDondePuedeTrabajar().any{ p=> p == universidades}}
}
