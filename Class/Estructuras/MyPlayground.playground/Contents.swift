import UIKit


struct Temperature{
    var Celcius: Double
    
    // propiedades calculadas o computadas  -> una propiedad no se puede asignar
    //porque depende de otra propiedad
    
    
    var fahrenhiet: Double{
        return Celcius * 1.8 + 32  // ≤- Depende
    }
    
    var kelvin: Double {
        return Celcius + 273.15 //≤- Depende
    }
}

var CelciusTemperatura = Temperature(Celcius: 100.0)

CelciusTemperatura.Celcius
CelciusTemperatura.fahrenhiet
CelciusTemperatura.kelvin

CelciusTemperatura.Celcius = 120
CelciusTemperatura.fahrenhiet
CelciusTemperatura.kelvin
