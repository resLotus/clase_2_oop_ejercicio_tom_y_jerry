object otroTom {
	var energia = 5
	
	method puedeAtraparA(unRaton) =  5 + energia / 10 > 10 * unRaton.peso()
	
	method energia(unaEnergia) {
		energia = unaEnergia
	}
}

object otroJerry {
	var peso = 3
	
	method peso() = peso
	
	method peso(unPeso) {
		peso = unPeso
	}
}

/////QUE ESTA MAL
/*
 * No es responsabilidad de tom 
   calcular la velocidad de jerry. 
   Es responsabilidad de jerry.
   
 * Como tom le pide el peso a jerry y 
   “juega” con ese peso, estamos 
   rompiendo el encapsulamiento de jerry.
   
 * Además, en nuestro dominio está la idea 
   de “velocidad”, y sin embargo en nuestro 
   código no aparece dicha abstracción, 
   que debería estar con su correspondiente nombre.
 */
 
 /////COMO CORREGIRLO 
 /*
  * Al delegar mejor, no tengo los problemas 
    mencionados: distribuyo mejor la responsabilidad 
    de calcular la velocidad de tom y la de jerry, 
    pongo nombre a la abstracción velocidad, y no 
    rompo el encapsulamiento de jerry, al dejarlo 
    a él jugar con su peso. 
  */