//
//  Generics.swift
//  enum
//
//  Created by ustadev.uz on 12/01/24.
//

import Foundation

class Dogs {
    var name:String
    
    init(name: String) {
        self.name = name
    }
}

class Cats{
    var name:String
    
    init(name: String) {
        self.name = name
    }
}

class Kiber<Animal>{
    var name:String
    var animal:Animal
    
    init(name: String,animal:Animal) {
        self.name = name
        self.animal  = animal
    }
    
}
