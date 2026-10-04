class Direccion{
    method nuevaDireccion() = generadorDeDireccion.direccionRandom()
    method moverse(personaje)
}

object arriba inherits Direccion{
  
  override method moverse(personaje) = personaje.moverseArriba()
}

object derecha inherits Direccion {  
  override method moverse(personaje) = personaje.moverseDerecha()
}

object abajo inherits Direccion {  
  override method moverse(personaje) = personaje.moverseAbajo()
}

object izquierda inherits Direccion {  
  override method moverse(personaje) = personaje.moverseIzquierda()
}

object generadorDeDireccion{
    const direcciones = [izquierda, derecha, arriba, abajo]

    method direccionRandom() {
        return direcciones.get(0.randomUpTo(direcciones.size()-1))
    }
}