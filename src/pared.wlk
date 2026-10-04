import wollok.game.*

class Pared {
    var property position 

    method image() = "item_candado_32x32.png"

    method chocarCon(personaje){
        personaje.chocarConPared()
    }
    method resetearse(){}

}
