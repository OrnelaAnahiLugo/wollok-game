import wollok.game.*
import personaje.*

object vicky inherits Personaje(
  posicionInicial = game.at(12,11),
  posicionAnterior = game.at(12,11),
  position = game.at(12,11)
){
  method image() = "vicky.png"
}
