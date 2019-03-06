import UIKit

var str = "Hello, playground"

//Comparaciones

var video = 8
if video < 10 {
   print("El video dura mucho")
}else if video > 500 {
    print("Está super largo")
}else{
    print("No está tan largo")
}

//Biblioteca
var hola = "Hola buenos dias"

hola.hasPrefix("Hola")


var friends = ["Erick", "Alex", "Daniel"]


for person in friends{
    let Bebe = "🍺 \(person)"
    print("Le toca beber a \(Bebe) dos cervezas")
}
print("todos han bebido")

friends.insert("Paco" , at: 2)


