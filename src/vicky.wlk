import wollok.game.*
import personaje.*
import src.reseteador.*

object vicky inherits Personaje (
  posicionAnterior = game.at(12, 11),
  position = game.at(12, 11)
) {
  var experiencia = 0

  method image() = "vicky.png"

  method experiencia() = experiencia

  method sumarExperiencia(cantidad) {
    experiencia += cantidad
  }

  override method comerPellet(pellet) {
    pellet.serComidoPor(self)
  }
  
  method chocarConEnemigo() {
    reseteador.resetearJuego()
  }
  
  method resetearse() {
    position = game.at(12, 11)
  }
}
