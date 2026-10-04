import wollok.game.*

class Personaje {
  var posicionAnterior
  var position
  var direccionActual = ""
  var direccionBloqueada = ""
  
  method position() = position
  
  method retroceder() {
    position = posicionAnterior
  }

  method bloquearDireccionActual() {
    direccionBloqueada = direccionActual
  }

  method puedeMoverseEn(direccion) = direccion != direccionBloqueada

  method prepararMovimiento(direccion) {
    if (direccionActual != direccion) {
      direccionBloqueada = ""
    }
    direccionActual = direccion
  }

  method moveUp() {
    self.prepararMovimiento("up")
    if (position.y() < game.height() - 1 && self.puedeMoverseEn("up")) {
      posicionAnterior = position
      position = position.up(1)
    }
  }

  method moveDown() {
    self.prepararMovimiento("down")
    if (position.y() > 0 && self.puedeMoverseEn("down")) {
      posicionAnterior = position
      position = position.down(1)
    }
  }

  method moveRight() {
    self.prepararMovimiento("right")
    if (position.x() < game.width() - 1 && self.puedeMoverseEn("right")) {
      posicionAnterior = position
      position = position.right(1)
    }
  }

  method moveLeft() {
    self.prepararMovimiento("left")
    if (position.x() > 0 && self.puedeMoverseEn("left")) {
      posicionAnterior = position
      position = position.left(1)
    }
  }


  method frenarA(personaje) {}

  method chocarCon(personaje) {}
}
