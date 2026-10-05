import wollok.game.*
import src.vicky.*
object teclado{

    method configurar() {
        keyboard.up().whilePressedDo({ vicky.moverseArriba() }, 200)
        keyboard.down().whilePressedDo({ vicky.moverseAbajo() }, 200)
        keyboard.right().whilePressedDo({ vicky.moverseDerecha() }, 200)
        keyboard.left().whilePressedDo({ vicky.moverseIzquierda() }, 200)
    }

}