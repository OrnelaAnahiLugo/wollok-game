import wollok.game.*
import src.controladorObjetos.*
import src.vicky.*

class Llave {
    var property position

    method image() = "Llave.png"

    method chocarCon(personaje) {
        personaje.encontrarObjetoExperiencia(self)
    }

    method serTomado() {
        controladorObjetos.quitar(self)
        vicky.multiplicarExperienciaPor(3)
    }
}

class CandadoConClave {
    var property position

    method image() = "candadoConClave.png"

    method chocarCon(personaje) {
        personaje.encontrarObjetoExperiencia(self)
    }

    method serTomado() {
        controladorObjetos.quitar(self)
        vicky.sumarExperiencia(500)
    }
}

class CandadoComun {
    var property position

    method image() = "candadoComun.png"

    method chocarCon(personaje) {
        personaje.encontrarObjetoExperiencia(self)
    }

    method serTomado() {
        controladorObjetos.quitar(self)
        vicky.volversePro()
    }
}
