import wollok.game.*
import src.vicky.*

object colisiones{

    method configurar(){

        game.onCollideDo(vicky, {elemento => elemento.chocarCon(vicky)})
        
    }

}