import wollok.game.*
import src.controladorObjetos.*
import src.vicky.*

class ObjetoExperiencia {
  var property position
  
  method chocarCon(personaje) {
    personaje.encontrarObjetoExperiencia(self)
  }
    method serTomado() {
    controladorObjetos.quitar(self)
  }
}

class Llave inherits ObjetoExperiencia {
  method image() = "Llave.png"
  
  override method serTomado() {
    super()
    vicky.multiplicarExperienciaPor(3)
  }
}

class CandadoConClave inherits ObjetoExperiencia{
  
  method image() = "candadoConClave.png"
  
  override method serTomado() {
    super()
    vicky.sumarExperiencia(500)
  }
}

class CandadoComun  inherits ObjetoExperiencia{
  
  method image() = "candadoComun.png"
  
  override method serTomado() {
    super()
    vicky.volversePro()
  }
}