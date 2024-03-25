object pepe {
	var categoria = cadete
	var bonoResultados = fijo
	var bonoPresentismo = normal
	var faltas = 1
	
	method sueldo(){
		return self.neto() + self.bonoResultados() + self.bonoPresentismo()
	}
	
	method neto() {
		return categoria.neto()
	}
	
	method categoria(_categoria) {
		categoria = _categoria
	}
	
	method categoria() {
		return categoria
	}
	
	method bonoResultados(){
		return bonoResultados.valor(self)
	}
	
	method tipoBonoResultados() {
		return bonoResultados
	}
	
	method tipoBonoResultados(_tipoBonoResultados){
		bonoResultados = _tipoBonoResultados
	}
	
	method faltas() {
		return faltas
	}
	
	method faltas(_faltas){
		faltas = _faltas
	}
	
	method bonoPresentismo() {
		return bonoPresentismo.valor(self)
	}
	
	method tipoBonoPresentismo() {
		return bonoPresentismo
	}
	
	method tipoBonoPresentismo(_tipoBonoPresentismo) {
		bonoPresentismo = _tipoBonoPresentismo
	}

}

// NETO

object gerente {
	method neto() {
		return 15000
	}
}

object cadete {
	method neto() {
		return 20000
	}
}

// BONO POR RESULTADO

object porcentaje {
		
	method valor(empleado){
		return empleado.neto() * 0.10
	}
}
	
object fijo {
	method valor(empleado) {
		return 800
	}
}

object resultadoNulo {
	method valor(empleado) {
		return 0
	}
}

// BONO POR PRESENTISMO

object normal {
	method valor(empleado) {
		if (empleado.faltas() == 0)
			return 2000
		else if (empleado.faltas() == 1)
			return 1000
		else return 0
	}	
}

object ajuste {
	method valor(empleado) {
		if (empleado.faltas() == 0)
			return 100
		else return 0
	}	
}

object demagogico {
	method valor(empleado) {
		if (empleado.neto() < 18000)
			return 500
		else return 300
	}	
}

object presentismoNulo {
	method valor(empleado) {
		return 0
	}	
}