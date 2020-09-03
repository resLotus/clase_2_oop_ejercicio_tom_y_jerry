object tom {
	var energia = 2
	
	method puedeAtraparA(unRaton) =  self.velocidad() > unRaton.velocidad()
	
	method velocidad() = 5 + (energia / 10)
	
	method energia(unaEnergia) {
		energia = unaEnergia
	}
}

object jerry {
	var peso = 5
	
	method velocidad() = 10 - peso
	
	method peso(unPeso) {
		peso = unPeso
	}
}

//CONCLUSION
/*
 * Mi sistema es más simple (y por ende menos propenso a errores) si:
   * Sólo me guardo lo mínimo indispensable: o sea, no me guardo lo que pueda calcular.
 
   * Hago el cálculo en el momento que necesito el dato, y no antes.
   
   * Elijo guardarme lo que en el dominio es  “independiente”, 
     y no guardar lo que es “dependiente” (¡porque puedo calcularlo!).
*/