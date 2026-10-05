class Direccion{
    method nuevaDireccion() = generadorDeDireccion.direccionRandom()
    method moverse(personaje)
    method siguiente(posicion)
}

object arriba inherits Direccion{
  override method moverse(personaje) = personaje.moverseArriba()
  override method siguiente(posicion) = posicion.up(1)
}

object derecha inherits Direccion {  
  override method moverse(personaje) = personaje.moverseDerecha()
  override method siguiente(posicion) = posicion.right(1)
}

object abajo inherits Direccion {  
  override method moverse(personaje) = personaje.moverseAbajo()
  override method siguiente(posicion) = posicion.down(1)
}

object izquierda inherits Direccion {  
  override method moverse(personaje) = personaje.moverseIzquierda()
  override method siguiente(posicion) = posicion.left(1)
}

object generadorDeDireccion{
    const direcciones = [izquierda, derecha, arriba, abajo]

    method direccionRandom() {
        return direcciones.get(0.randomUpTo(direcciones.size()-1))
    }
}
