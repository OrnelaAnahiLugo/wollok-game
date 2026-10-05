import wollok.game.*
import src.vicky.*
import config.direccion.*
object teclado{

    method configurar() {
        keyboard.up().onPressDo({ vicky.quererMoverseHacia(arriba) })
        keyboard.down().onPressDo({ vicky.quererMoverseHacia(abajo) })
        keyboard.right().onPressDo({ vicky.quererMoverseHacia(derecha) })
        keyboard.left().onPressDo({ vicky.quererMoverseHacia(izquierda) })
    }

}
