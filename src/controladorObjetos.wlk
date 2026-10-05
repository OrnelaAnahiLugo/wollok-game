import wollok.game.*
import config.paredesHandler.*
import src.objetoExperiencia.*

object controladorObjetos {
    const objetos = []
    const tickObjetos = game.tick(15000, { self.crearObjetoRandom() }, true)
    const generadores = [
        generadorLlave,
        generadorCandadoConClave,
        generadorCandadoComun
    ]

    method iniciar() {
        tickObjetos.start()
    }

    method resetear() {
        objetos.forEach({ objeto => game.removeVisual(objeto) })
        objetos.clear()
        tickObjetos.reset()
    }

    method crearObjetoRandom() {
        const posicion = self.posicionRandomLibre()
        self.agregar(self.generadorRandom().crearEn(posicion))
    }

    method generadorRandom() {
        return generadores.get(0.randomUpTo(generadores.size() - 1))
    }

    method posicionRandomLibre() {
        const posicion = game.at(
            0.randomUpTo(game.width() - 1),
            0.randomUpTo(game.height() - 1)
        )

        if (paredesHandler.hayParedEn(posicion)) {
            return self.posicionRandomLibre()
        } else {
            return posicion
        }
    }

    method agregar(objeto) {
        objetos.add(objeto)
        game.addVisual(objeto)
    }

    method quitar(objeto) {
        game.removeVisual(objeto)
        objetos.remove(objeto)
    }
}

object generadorLlave {
    method crearEn(posicion) = new Llave(position = posicion)
}

object generadorCandadoConClave {
    method crearEn(posicion) = new CandadoConClave(position = posicion)
}

object generadorCandadoComun {
    method crearEn(posicion) = new CandadoComun(position = posicion)
}
