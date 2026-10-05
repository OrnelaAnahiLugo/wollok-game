import src.personaje.Personaje
import config.direccion.*
import src.vicky.vicky

class Enemigo inherits Personaje(
    position = game.at(12,15)
){
    method image() = "scream.png"

    override method initialize() {
        super()
        self.quererMoverseHacia(self.direccionLibreAlAzar())
    }

    override method elegirDireccion() {
        if (!self.puedeIrHacia(direccionActual)) {
            self.quererMoverseHacia(self.direccionLibreAlAzar())
        }
    }

    method direccionLibreAlAzar() =
        generadorDeDireccion.direcciones().filter({ direccion => self.puedeIrHacia(direccion) }).anyOne()

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
