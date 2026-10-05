import wollok.game.*
import config.paredesHandler.*
import config.colisiones.*

class Personaje {
  var position
  var direccionActual = null
  var direccionDeseada = null

  method position() = position

  method quererMoverseHacia(direccion) {
    direccionDeseada = direccion
  }

  method avanzar() {
    self.elegirDireccion()
    if (direccionDeseada != null && self.puedeIrHacia(direccionDeseada)) {
      direccionActual = direccionDeseada
    }
    if (direccionActual != null && self.puedeIrHacia(direccionActual)) {
      position = direccionActual.siguiente(position)
      self.revisarCelda()
    }
  }

  method elegirDireccion() {}

  method revisarCelda() {
    colisiones.revisarColisiones(self)
  }

  method puedeIrHacia(direccion) = self.puedeIrA(direccion.siguiente(position))

  method puedeIrA(nuevaPosicion) =
    nuevaPosicion.x().between(0, game.width() - 1) &&
    nuevaPosicion.y().between(0, game.height() - 1) &&
    !paredesHandler.hayParedEn(nuevaPosicion)

  method chocarCon(personaje) {}

  method comerPellet(pellet) {}

  method encontrarObjetoExperiencia(objeto) {}
}
