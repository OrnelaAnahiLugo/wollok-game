import wollok.game.*
import src.enemigo.Enemigo

object controladorEnemigo{
    const enemigos = []

    method crearEnemigo(){
        if(enemigos.size() < 4){
            const nuevoEnemigo = new Enemigo()
            enemigos.add(nuevoEnemigo)
            game.addVisual(nuevoEnemigo)
            nuevoEnemigo.revisarCelda()
        }
    }



    method manejarEnemigos(){
        const tick = game.tick(200, { self.moverEnemigos() }, true)
        tick.start()
    }

    method moverEnemigos(){
        enemigos.forEach({enemigo => enemigo.avanzar()})
    }
    
    method resetear(){
        enemigos.forEach({enemigo => game.removeVisual(enemigo)})
        enemigos.clear()
    }
}
