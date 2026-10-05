import wollok.game.*
import config.paredesHandler.*
import src.pellet.Pellet

object controladorPellets {
    const pellets = []

    method generarPellets() {
        (0 .. game.width() - 1).forEach({ x =>
            (0 .. game.height() - 1).forEach({ y =>
                const posicion = game.at(x, y)

                if (!paredesHandler.hayParedEn(posicion)) {
                    self.agregarPelletEn(posicion)
                }
            })
        })
    }

    method agregarPelletEn(posicion) {
        const pellet = new Pellet(position = posicion)
        pellets.add(pellet)
        game.addVisual(pellet)
    }

    method resetear() {
        pellets.forEach({ pellet => game.removeVisual(pellet) })
        pellets.clear()
        self.generarPellets()
    }

    method comer(pellet) {
        game.removeVisual(pellet)
        pellets.remove(pellet)
    }
}
