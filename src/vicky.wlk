import wollok.game.*
import personaje.*
import src.reseteador.*

object vicky inherits Personaje (
  position = game.at(12, 11)
) {
  var experiencia = 0
  var experienciaPorPellet = 1
  var esPro = false

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

  override method comerPellet(pellet) {
    pellet.serComidoPor(self)
  }

  override method encontrarObjetoExperiencia(objeto) {
    objeto.serTomado()
  }
  
  override method chocarCon(personaje) {
    personaje.chocarCon(self)
  }

  method chocarConEnemigo() {
    reseteador.resetearJuego()
  }
  
  method resetearse() {
    position = game.at(12, 11)
    direccionActual = null
    direccionDeseada = null
    experiencia = 0
    experienciaPorPellet = 1
    esPro = false
  }
}
