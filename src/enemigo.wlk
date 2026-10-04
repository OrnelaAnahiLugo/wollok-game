import src.controladorEnemigo.*
import src.personaje.Personaje
import config.direccion.*

class Enemigo inherits Personaje(
    posicionAnterior = game.at(12,15),
    position = game.at(12,15)
){
    
    var direccion
    method image() = "scream.png"
    
    override method retroceder() {
        super()
        self.cambiarDireccion()
    }

    method cambiarDireccion() {
        direccion = direccion.nuevaDireccion()
    }

    override method chocarConPared() {
        self.retroceder()
    }

    method moverse(){
        direccion.moverse(self)
    }

    override method chocarCon(personaje){
        personaje.chocarConEnemigo()
    }

    method chocarConEnemigo(){}
}
