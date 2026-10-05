import wollok.game.*

object paredesHandler {
  var altura = 0
  var ancho = 0
  const posicionesParedes = []
  var grilla = []
  const tramosParedes = [
    new TramoPared(inicio = 0, fin = 24, posicion = 0, tipo = "horizontal"),
    new TramoPared(inicio = 0, fin = 24, posicion = 24, tipo = "horizontal"),
    new TramoPared(inicio = 1, fin = 10, posicion = 0, tipo = "vertical"),
    new TramoPared(inicio = 1, fin = 10, posicion = 24, tipo = "vertical"),
    new TramoPared(inicio = 16, fin = 23, posicion = 0, tipo = "vertical"),
    new TramoPared(inicio = 16, fin = 23, posicion = 24, tipo = "vertical"),
    new TramoPared(inicio = 8, fin = 16, posicion = 2, tipo = "horizontal"),
    new TramoPared(inicio = 2, fin = 10, posicion = 4, tipo = "horizontal"),
    new TramoPared(inicio = 14, fin = 22, posicion = 4, tipo = "horizontal"),
    new TramoPared(inicio = 8, fin = 16, posicion = 6, tipo = "horizontal"),
    new TramoPared(inicio = 8, fin = 16, posicion = 10, tipo = "horizontal"),
    new TramoPared(inicio = 8, fin = 16, posicion = 18, tipo = "horizontal"),
    new TramoPared(inicio = 2, fin = 6, posicion = 2, tipo = "horizontal"),
    new TramoPared(inicio = 18, fin = 22, posicion = 2, tipo = "horizontal"),
    new TramoPared(inicio = 6, fin = 10, posicion = 8, tipo = "horizontal"),
    new TramoPared(inicio = 14, fin = 18, posicion = 8, tipo = "horizontal"),
    new TramoPared(inicio = 0, fin = 4, posicion = 12, tipo = "horizontal"),
    new TramoPared(inicio = 20, fin = 24, posicion = 12, tipo = "horizontal"),
    new TramoPared(inicio = 0, fin = 4, posicion = 14, tipo = "horizontal"),
    new TramoPared(inicio = 20, fin = 24, posicion = 14, tipo = "horizontal"),
    new TramoPared(inicio = 6, fin = 10, posicion = 16, tipo = "horizontal"),
    new TramoPared(inicio = 14, fin = 18, posicion = 16, tipo = "horizontal"),
    new TramoPared(inicio = 6, fin = 10, posicion = 20, tipo = "horizontal"),
    new TramoPared(inicio = 14, fin = 18, posicion = 20, tipo = "horizontal"),
    new TramoPared(inicio = 6, fin = 10, posicion = 22, tipo = "horizontal"),
    new TramoPared(inicio = 14, fin = 18, posicion = 22, tipo = "horizontal"),
    new TramoPared(inicio = 1, fin = 4, posicion = 10, tipo = "horizontal"),
    new TramoPared(inicio = 20, fin = 23, posicion = 10, tipo = "horizontal"),
    new TramoPared(inicio = 1, fin = 4, posicion = 16, tipo = "horizontal"),
    new TramoPared(inicio = 20, fin = 23, posicion = 16, tipo = "horizontal"),
    new TramoPared(inicio = 20, fin = 23, posicion = 12, tipo = "vertical"),
    new TramoPared(inicio = 10, fin = 12, posicion = 6, tipo = "vertical"),
    new TramoPared(inicio = 10, fin = 12, posicion = 18, tipo = "vertical"),
    new TramoPared(inicio = 2, fin = 4, posicion = 8, tipo = "horizontal"),
    new TramoPared(inicio = 20, fin = 22, posicion = 8, tipo = "horizontal"),
    new TramoPared(inicio = 8, fin = 10, posicion = 12, tipo = "horizontal"),
    new TramoPared(inicio = 14, fin = 16, posicion = 12, tipo = "horizontal"),
    new TramoPared(inicio = 8, fin = 10, posicion = 14, tipo = "horizontal"),
    new TramoPared(inicio = 14, fin = 16, posicion = 14, tipo = "horizontal"),
    new TramoPared(inicio = 2, fin = 4, posicion = 18, tipo = "horizontal"),
    new TramoPared(inicio = 20, fin = 22, posicion = 18, tipo = "horizontal"),
    new TramoPared(inicio = 2, fin = 4, posicion = 20, tipo = "horizontal"),
    new TramoPared(inicio = 20, fin = 22, posicion = 20, tipo = "horizontal"),
    new TramoPared(inicio = 2, fin = 4, posicion = 22, tipo = "horizontal"),
    new TramoPared(inicio = 20, fin = 22, posicion = 22, tipo = "horizontal"),
    new TramoPared(inicio = 1, fin = 2, posicion = 6, tipo = "horizontal"),
    new TramoPared(inicio = 22, fin = 23, posicion = 6, tipo = "horizontal"),
    new TramoPared(inicio = 6, fin = 7, posicion = 4, tipo = "vertical"),
    new TramoPared(inicio = 5, fin = 6, posicion = 6, tipo = "vertical"),
    new TramoPared(inicio = 14, fin = 15, posicion = 6, tipo = "vertical"),
    new TramoPared(inicio = 17, fin = 18, posicion = 6, tipo = "vertical"),
    new TramoPared(inicio = 4, fin = 5, posicion = 12, tipo = "vertical"),
    new TramoPared(inicio = 8, fin = 9, posicion = 12, tipo = "vertical"),
    new TramoPared(inicio = 16, fin = 17, posicion = 12, tipo = "vertical"),
    new TramoPared(inicio = 5, fin = 6, posicion = 18, tipo = "vertical"),
    new TramoPared(inicio = 14, fin = 15, posicion = 18, tipo = "vertical"),
    new TramoPared(inicio = 17, fin = 18, posicion = 18, tipo = "vertical"),
    new TramoPared(inicio = 6, fin = 7, posicion = 20, tipo = "vertical"),
    new TramoPared(inicio = 4, fin = 4, posicion = 11, tipo = "horizontal"),
    new TramoPared(inicio = 20, fin = 20, posicion = 11, tipo = "horizontal"),
    new TramoPared(inicio = 8, fin = 8, posicion = 13, tipo = "horizontal"),
    new TramoPared(inicio = 16, fin = 16, posicion = 13, tipo = "horizontal"),
    new TramoPared(inicio = 4, fin = 4, posicion = 15, tipo = "horizontal"),
    new TramoPared(inicio = 20, fin = 20, posicion = 15, tipo = "horizontal"),
    new TramoPared(inicio = 2, fin = 2, posicion = 21, tipo = "horizontal"),
    new TramoPared(inicio = 4, fin = 4, posicion = 21, tipo = "horizontal"),
    new TramoPared(inicio = 6, fin = 6, posicion = 21, tipo = "horizontal"),
    new TramoPared(inicio = 10, fin = 10, posicion = 21, tipo = "horizontal"),
    new TramoPared(inicio = 14, fin = 14, posicion = 21, tipo = "horizontal"),
    new TramoPared(inicio = 18, fin = 18, posicion = 21, tipo = "horizontal"),
    new TramoPared(inicio = 20, fin = 20, posicion = 21, tipo = "horizontal"),
    new TramoPared(inicio = 22, fin = 22, posicion = 21, tipo = "horizontal")
  ]
  
  method generarParedes() {
    altura = game.height() - 1
    ancho = game.width() - 1
    posicionesParedes.clear()
    
    tramosParedes.forEach({ tramo => tramo.cargarEn(self) })
    
    grilla = (0 .. altura).map({ y => self.filaDeGrilla(y) })
  }

  method filaDeGrilla(y) {
    const xsConPared = posicionesParedes.filter({ posicion => posicion.y() == y }).map({ posicion => posicion.x() })
    return (0 .. ancho).map({ x => xsConPared.contains(x) })
  }

  method hayParedEn(posicion) = grilla.get(posicion.y()).get(posicion.x())
  
  method cargarPosicionDeParedesVerticales(inicio, fin, posicionEnX) {
    (inicio .. fin).forEach(
      { posicionEnY => posicionesParedes.add(game.at(posicionEnX, posicionEnY)) }
    )
  }
  
  method cargarPosicionDeParedesHorizontales(inicio, fin, posicionEnY) {
    (inicio .. fin).forEach(
      { posicionEnX => posicionesParedes.add(game.at(posicionEnX, posicionEnY)) }
    )
  }
}

class TramoPared {
  const property inicio
  const property fin
  const property posicion
  const property tipo
  
  method cargarEn(handler) {
    if (tipo == "vertical") handler.cargarPosicionDeParedesVerticales(
        inicio,
        fin,
        posicion
      )
    else handler.cargarPosicionDeParedesHorizontales(inicio, fin, posicion)
  }
}
