import wollok.game.*

object colisiones{

    method revisarColisiones(personaje) {
        game.colliders(personaje).forEach({elemento => if (game.hasVisual(elemento)) elemento.chocarCon(personaje)})
    }

}
