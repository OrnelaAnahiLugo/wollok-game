import wollok.game.*

object colisiones{

    method revisarColisiones(personaje) {
        game.colliders(personaje).forEach({elemento => elemento.chocarCon(personaje)})
    }

}
