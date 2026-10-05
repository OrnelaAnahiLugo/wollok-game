import src.personaje.Personaje
import config.direccion.*
import src.vicky.vicky

class Enemigo inherits Personaje(
    position = game.at(12,15)
){
    method image() = "scream.png"

    override method elegirDireccion() {
        if (direccionActual == null || !self.puedeIrHacia(direccionActual)) {
            const libres = generadorDeDireccion.direcciones().filter({ direccion => self.puedeIrHacia(direccion) })
            if (!libres.isEmpty()) {
                self.quererMoverseHacia(libres.anyOne())
            }
        }
    }

    override method revisarCelda() {
        if (vicky.position() == position) {
            vicky.chocarCon(self)
        }
    }

    override method chocarCon(personaje){
        personaje.chocarConEnemigo()
    }

    method chocarConEnemigo(){}
}
