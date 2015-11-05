//: Tarea: Un velocímetro de un automóvil digital

//  Created by Marlon de Jesus Gonzalez on 03/11/15.


import UIKit


enum Velocidades:Int {
    
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial:Velocidades){
        self = velocidadInicial
    }
    
    
}

class Auto {
    var velocidad:Velocidades
    init(){
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena: String){
        let cadenaVelocidad:String
        let actual = velocidad.rawValue
        
        switch velocidad {
        case .Apagado:
            velocidad = .VelocidadBaja
            cadenaVelocidad = "Apagado"
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            cadenaVelocidad = "Velocidad Baja"
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            cadenaVelocidad = "Velocidad Media"
        
        //  Nota: Se adecuo Mini Reto con base a las recomendaciones del Teaching Equipo docente de Swift: programar para iOS
        
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            cadenaVelocidad = "Velocidad Alta"
        }
        return (actual, cadenaVelocidad)
    }
    
}

let auto = Auto()
for i in 1...20 {
    let resultado = auto.cambioDeVelocidad()
    print("\(i). \(resultado.actual), \(resultado.velocidadEnCadena)")
}



