import wollok.game.*
import config.paredesHandler.*
import config.colisiones.*
import config.direccion.*

class Personaje {
  var position
  var direccionActual = quieto
  var direccionDeseada = quieto

  method position() = position

  method quererMoverseHacia(direccion) {
    direccionDeseada = direccion
  }

  method avanzar() {
    self.elegirDireccion()
    if (self.puedeIrHacia(direccionDeseada)) {
      direccionActual = direccionDeseada
    }
    if (self.puedeIrHacia(direccionActual)) {
      direccionActual.llevar(self)
    }
  }

  method irA(nuevaPosicion) {
    position = nuevaPosicion
    self.revisarCelda()
  }

  method elegirDireccion() {}

  method revisarCelda() {
    colisiones.revisarColisiones(self)
  }

  method puedeIrHacia(direccion) = self.puedeIrA(direccion.siguiente(position))

  method puedeIrA(nuevaPosicion) =
    self.estaDentroDelTablero(nuevaPosicion) && !paredesHandler.hayParedEn(nuevaPosicion)

  method estaDentroDelTablero(posicion) =
    posicion.x().between(0, game.width() - 1) && posicion.y().between(0, game.height() - 1)

  method chocarCon(personaje) {}

  method comerPellet(pellet) {}

  method encontrarObjetoExperiencia(objeto) {}
}
