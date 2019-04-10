//: [Previous](@previous)

import Foundation

struct Temperature {
    static var boilingPoint = 100
    var celcius : Double
    
    static func hello(){
        print("Hello!")
    }
    
}

/*a nivel de clase y no de instancia, o sea no podras aplicar conceptos de programacion orientado a objetos*/

let instance = Temperature.boilingPoint

let instance2 = Temperature(celcius: 300.0)


let instance3 = Temperature(celcius: 200.0)

//No quiero estancias especìficas
//quiero que todas sean iguales
//Nombre de la estructura.nombrePropiedad   <- Corresponde al tipo de estructura


instance2.celcius
instance3.celcius

//No existe
//instance3.hello()

Temperature.hello()


