import cosas.*

object camion {
	const property cosas = []
	var tara = 1000
	
	method cargar(unaCosa) {
		cosas.add(unaCosa)	
	}
	method descargar(unaCosa) {
		cosas.remove(unaCosa) 
	}
	method pesoTotal() {
		return cosas.sum({cosa => cosa.peso() + tara})
	}
	method excedidoDePeso() {
		return self.pesoTotal() > 2500
	}
	method objetosPeligrosos(nivel) {
		return cosas.sum({cosa => cosa.nivelPeligrosidad()})
	}
}