import src.vicky.vicky
import src.controladorEnemigo.*
import src.controladorPellets.*
import src.controladorObjetos.*
import config.colisiones.*

object reseteador {
    method resetearJuego() {
        controladorEnemigo.resetear()
        controladorPellets.resetear()
        controladorObjetos.resetear()
        vicky.resetearse()
        colisiones.revisarColisiones(vicky)
    }
}
