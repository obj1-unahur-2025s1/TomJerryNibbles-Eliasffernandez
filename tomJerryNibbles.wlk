object tom {
    var energia = 50
    var ultimoRatonComido = jerry
    var distanciaRecorrida = 0
    method comer(unRaton){
        energia = energia+ 12 + unRaton.peso()
        ultimoRatonComido = unRaton
    }
    method correr(metros){
        energia = energia - metros *0.5 // dividido 2
        distanciaRecorrida += metros //distanciaRecorrida = distanciaRecorrida + metros
    } 

    method velocidadMaxima(){ //mensaje de consulta va con return
        return 5 + energia / 10
    }
    method energia(){
        return energia
    }

    method puedeCazar(distancia){
        return energia >= distancia / 2
    } 

    method cazar(unRaton, unaDistancia){ //self si mismo
        if (self.puedeCazar(unaDistancia)){ 
            self.correr(unaDistancia)
            self.comer(unRaton)
        }
    }
}

object jerry {
    var edad = 2
    method edad(){
        return edad
    }
    method cumplirAnios(){
        edad += 1
    }
    method peso() {
        return edad * 20
    }

}

object nibbles {
  method peso(){
    return 35
  }
}

object jorgito{
    // jorgito puede cambiar su peso a voluntad
    var peso = 30
    method peso(){
        return peso
    }
    method peso(nuevoPeso){
        peso = nuevoPeso
    }
}
// Inventar otro ratón