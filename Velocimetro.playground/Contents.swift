//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init (velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init () {
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioVelocidad () -> (actual : Int, velocidadEnCadena : String) {
        let vel = velocidad
        switch (velocidad) {
        case .Apagado:
            velocidad = Velocidades.VelocidadBaja
            return (vel.rawValue , "Velocidad baja")
        case .VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
            return (vel.rawValue , "Velocidad media")
        case .VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
            return (vel.rawValue , "Velocidad alta")
        case .VelocidadAlta:
            velocidad = Velocidades.VelocidadMedia
            return (vel.rawValue , "Velocidad media")
        }
    }
}


var auto = Auto()

for  i  in 0...19 {
    print ("\(auto.cambioVelocidad())")
}

