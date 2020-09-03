object tom {
	var energia = 20

	method puedeAtraparA(unRaton) 
	= self.velocidad() > unRaton.velocidad()
	
	method velocidad() = 5 + (energia / 10)
	
	method energia(unaEnergia) {
		energia = unaEnergia
	}
}

object jerry {
	var peso
	
	method velocidad() = 10 * peso
	
	method peso(unPeso) {
		peso = unPeso
	}
}

object robotRaton {	
	const velocidad = 8
	
	method velocidad() = velocidad
}