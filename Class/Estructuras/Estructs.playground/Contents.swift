import UIKit

struct Person {
    var name:String
    //var age:Int = 10
    var firstName: String?
    
    func sayHello(){
        print("Hello my name is \(name)")
    }
    
}

var newPerson: Person = Person(name: "Erick", firstName: "erick")

newPerson.sayHello()

