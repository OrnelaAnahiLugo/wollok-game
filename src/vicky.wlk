import wollok.game.*
import personaje.*
import src.reseteador.*
import config.colisiones.*

object vicky inherits Personaje (
  posicionAnterior = game.at(12, 11),
  position = game.at(12, 11)
) {
  var experiencia = 0
  var experienciaPorPellet = 1
  var esPro = false
  var direccionActual = null
  var direccionDeseada = null

  method image() = "vicky.png"

  method experiencia() = experiencia

  method esPro() = esPro

  method sumarExperiencia(cantidad) {
    experiencia += cantidad
  }

  method sumarExperienciaPorPellet() {
    self.sumarExperiencia(experienciaPorPellet)
  }

  method multiplicarExperienciaPor(multiplicador) {
    experiencia *= multiplicador
  }

  method volversePro() {
    esPro = true
    experienciaPorPellet = 2
  }

  method quererMoverseHacia(direccion) {
    direccionDeseada = direccion
  }

  method avanzar() {
    if (direccionDeseada != null && self.puedeIrA(direccionDeseada.siguiente(position))) {
      direccionActual = direccionDeseada
    }
    if (direccionActual != null) {
      direccionActual.moverse(self)
      colisiones.revisarColisiones(self)
    }
  }

  override method comerPellet(pellet) {
    pellet.serComidoPor(self)
  }

  override method encontrarObjetoExperiencia(objeto) {
    objeto.serTomado()
  }
  
  method chocarConEnemigo() {
    reseteador.resetearJuego()
  }
  
  method resetearse() {
    position = game.at(12, 11)
    direccionActual = null
    direccionDeseada = null
  }
}
