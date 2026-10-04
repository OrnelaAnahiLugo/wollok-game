import wollok.game.*
import personaje.*
import src.reseteador.*

object vicky inherits Personaje (
  posicionAnterior = game.at(12, 11),
  position = game.at(12, 11)
) {
  method image() = "vicky.png"
  
  method chocarConEnemigo() {
    reseteador.resetearJuego()
  }
  
  method resetearse() {
    position = game.at(12, 11)
  }
}