object arriba {
  method nuevaDireccion() = generadorDeDireccion.direccionRandom()
  
  method moverse(personaje) = personaje.moveUp()
}

object derecha {
  method nuevaDireccion() = generadorDeDireccion.direccionRandom()
  
  method moverse(personaje) = personaje.moveRight()
}

object abajo {
  method nuevaDireccion() = generadorDeDireccion.direccionRandom()
  
  method moverse(personaje) = personaje.moveDown()
}

object izquierda {
  method nuevaDireccion() = generadorDeDireccion.direccionRandom()
  
  method moverse(personaje) = personaje.moveLeft()
}

object generadorDeDireccion{
    const direcciones = [izquierda, derecha, arriba, abajo]

    method direccionRandom() {
        return direcciones.get(0.randomUpTo(direcciones.size()-1))
    }
}