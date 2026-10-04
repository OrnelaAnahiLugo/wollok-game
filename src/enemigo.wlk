import src.controladorEnemigo.*
import src.personaje.Personaje
import config.direccion.*

class Enemigo inherits Personaje(
    posicionInicial = game.at(12,15),
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

    override method chocarCon(personaje) {
        controladorEnemigo.resetearJuego()
    }

}
