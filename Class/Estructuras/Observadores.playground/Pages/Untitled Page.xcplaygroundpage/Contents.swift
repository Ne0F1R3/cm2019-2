import Foundation

// observadores de propiedad

struct StepCounter{
    //observador: funciòn que ve que pase algo
    var totalSteps: Int = 0 { // ≤- Asignación de entrada para evitar errores
        // a punto de cambiarse
        willSet {
            print("About to set totalSteps to \(newValue)")
        }
        //cuando ya se cambio
        didSet{
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
        
        
        
    }
}

var stepsErick = StepCounter()
var stepsIvan = StepCounter(totalSteps: 20)
stepsErick.totalSteps = 10
stepsErick.totalSteps = 34




