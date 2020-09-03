object tom {
	var velocidad = 5
	
	method energia(unaEnergia) {
		velocidad = 10 + (unaEnergia / 10)
	}
	
	method velocidad() = velocidad
}

/////QUE ESTA MAL
/*
 * Si la velocidad dependiera de la fuerza, 
   de la astucia, de la cantidad de pelo.... 
   Con este modelo debería actualizar la velocidad 
   cada vez que se modifica aquello de lo que dependo.
   
 * El método energia: , que por el nombre parece 
   ser algo que “cambia la energía”, en realidad 
   lo que está haciendo es cambiando la velocidad.
   
 * Si quisiera obtener la energía, tengo que calcularla 
   a partir de la velocidad, cuando la energía 
   debería ser mi variable independiente, mientras 
   que mi velocidad debe ser la variable dependiente.
 */
 
 
 /////COMO CORREGIRLO
  /*
  * Al calcular la velocidad en el momento que la 
    necesito, tengo en ese momento los datos actualizados 
    de los cuales dependo (en este caso, sólo de la energía, 
    pero podría depender de la fuerza, de la astucia, etc.).
    
    method velocidad() = velocidad ----------> method velocidad = 10 + (energia / 10)
    
  * Lo que en mi dominio aparece como una variable independiente, 
    la energía, es más simple de mantener actualizado 
    (cambia sólo cuando el usuario quiere cambiarla 
    específicamente, y no cuando toca otras cosas).
    Por eso guardarme la energía es mejor.
  */
 