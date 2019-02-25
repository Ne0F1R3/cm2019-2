import UIKit //estoy incluyendo un framework
//import Foundation


let age = 20
let month = 2
let name = "Erick Iván"
let firstName = "Bárcenas"
let lastName = "Martínez"
let isHappy = true
//let birthDay = "24/08/1998"

let birthDay = Date()
print(birthDay)//ya tiene un constructor
let birthDay2 = Date(timeIntervalSinceNow: 3600)

func hello(){//Otro contexto
print("Hola" + name) //concatenación
print("Hola \(name)")//interpolación
print("Hola",name)
}

hello()


func hallo(nombre:String){//Otro contexto
   
    print("Hola",name) //interpolación
}

hallo(nombre:"Erick")


func hi(nombre:String) -> String{
    let saludo = "Hola " + name //inferencia de tipo
    return saludo
}

let saludo: String = hi(nombre:"Erick") //anotaciòn de tipo

print(saludo)
