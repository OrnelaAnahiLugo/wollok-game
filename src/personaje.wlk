import wollok.game.*
import config.paredesHandler.*

class Personaje {
  var posicionAnterior
  var position
  
  method position() = position
  
  method retroceder() {
    position = posicionAnterior
  }

  method moverseA(nuevaPosicion) {
    if (paredesHandler.hayParedEn(nuevaPosicion)) {
      self.noPudoMoverse()
    } else {
      posicionAnterior = position
      position = nuevaPosicion
    }
  }

  method noPudoMoverse() {}

  method moverseArriba() {
    if (position.y() < game.height() - 1) {
      self.moverseA(position.up(1))
    }
  }

  method moverseAbajo() {
    if (position.y() > 0) {
      self.moverseA(position.down(1))
    }
  }

  method moverseDerecha() {
    if (position.x() < game.width() - 1) {
      self.moverseA(position.right(1))
    }
  }

  method moverseIzquierda() {
    if (position.x() > 0) {
      self.moverseA(position.left(1))
    }
  }


  method chocarCon(personaje) {}

  method comerPellet(pellet) {}
}
