import wollok.game.*
import src.vicky.*

object colisiones{

    method configurarColision(personaje) {
        game.onCollideDo(personaje, {elemento => elemento.chocarCon(personaje)})
    }

}
