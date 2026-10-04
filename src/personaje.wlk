import wollok.game.*

class Personaje {
  var posicionAnterior
  var position
  
  method position() = position
  
  method retroceder() {
    position = posicionAnterior
  }

  method moveUp() {
    if (position.y() < game.height() - 1) {
      posicionAnterior = position
      position = position.up(1)
    }
  }

  method moveDown() {
    if (position.y() > 0) {
      posicionAnterior = position
      position = position.down(1)
    }
  }

  method moveRight() {
    if (position.x() < game.width() - 1) {
      posicionAnterior = position
      position = position.right(1)
    }
  }

  method moveLeft() {
    if (position.x() > 0) {
      posicionAnterior = position
      position = position.left(1)
    }
  }


  method frenarA(personaje) {}
}
