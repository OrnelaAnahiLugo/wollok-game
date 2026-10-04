import src.reseteador.*
import wollok.game.*
import src.enemigo.Enemigo
import config.direccion.*
import src.vicky.*
import config.colisiones.*

object controladorEnemigo{
    const enemigos = []

    method crearEnemigo(){
        if(enemigos.size() < 4){
            const nuevoEnemigo = new Enemigo(
                direccion = generadorDeDireccion.direccionRandom()
            )
            enemigos.add(nuevoEnemigo)
            game.addVisual(nuevoEnemigo)
        }
    }



    method manejarEnemigos(){
        const tick = game.tick(200, { enemigos.forEach({enemigo => enemigo.moverse()}) }, true)
        tick.start()
    }
    
    method resetear(){
        enemigos.forEach({enemigo => game.removeVisual(enemigo)})
        enemigos.clear()
    }
}
