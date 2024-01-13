//
//  Memory Managment .swift
//  basic swift
//
//  Created by ustadev.uz on 13/01/24.
//

import Foundation

class Tutorial{
    var name:String
    weak var corse : Cours?
    unowned var teacher:Teacher
    
    init(name: String, techaer:Teacher) {
        self.name = name
        self.teacher = techaer
    }
    
    deinit{
        print("close tutorial \(name)")
    }
}

class Teacher{
    var name:String
    var tutorials : [Tutorial] = []
    
    init(name: String) {
        self.name = name
    }
    
    deinit{
        print("close Teacher \(name)")
    }
}

class Cours{
    var name:String
    var courses:[Tutorial] = []
    
    init(name: String) {
        self.name = name
    }
    
    deinit{
        print("close Cours \(name)")
    }
}






///topshiriq
class Person2 {
    let name: String
    let email: String
    weak var car: Car?
    init(name: String, email: String) {
        self.name = name
        self.email = email
    }
    deinit {
        print ("Goodbye (Person)!")
    }
}
class Car {
    let id: Int
    let type: String
    var owner: Person2?
    init(id: Int, type: String) {
        self.id = id
        self.type = type
    }
    deinit{
        print ("Goodbye (car)!")
    }
}
    
