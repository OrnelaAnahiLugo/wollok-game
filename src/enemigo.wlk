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

    method moverse(){
        direccion.moverse(self)
    }

    method chocarCon(personaje){
        personaje.chocarConEnemigo()
    }

    method chocarConEnemigo(){}
}
