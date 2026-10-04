import wollok.game.*
import src.controladorPellets.*

class Pellet {
    var property position

    method image() = "pellets.png"

    method chocarCon(personaje) {
        personaje.comerPellet(self)
    }

    method serComidoPor(vicky) {
        controladorPellets.comer(self)
        vicky.sumarExperienciaPorPellet()
    }
}
