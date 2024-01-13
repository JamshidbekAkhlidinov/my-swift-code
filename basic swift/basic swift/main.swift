//
//  main.swift
//  basic swift
//
//  Created by ustadev.uz on 13/01/24.
//

import Foundation

//Object convert json
var person = Person(id: 12, name: "Jama")
print(person)
let encoder = JSONEncoder()
let encoded = try encoder.encode(person)
print(encoded)
let string = String(data: encoded, encoding: .utf8)!
print(string)

//Json convert object
let jsonStrin  = string.data(using: .utf8)!
let decoder = JSONDecoder()
let decoded = try decoder.decode(Person.self,from: jsonStrin)

print(decoded)



//topshiriq
let crew = CrewMember(name: "Member Alex", rase: "Lolo")
let spaceship = Spaceship(name: "DODO", crew: crew)

let encoder2  = JSONEncoder()
let encoded2  = try encoder2.encode(spaceship)
let string2 = String(data: encoded2, encoding: .utf8)!
print(string2)

let decoder2  = JSONDecoder()
let jsonString2  = string2.data(using: .utf8)!
let decoded2 = try decoder.decode(Spaceship.self, from: jsonString2)

print(decoded2)

print(String(repeating: "*", count: 10),terminator: "")
print(" memory management ",terminator: "")
print(String(repeating: "*", count: 10))


//memory management
do {
    //
    let curs = Cours(name: "CURS")
    let teacher = Teacher(name: "Ustoz")
    let tutorial = Tutorial(name: "Tutorial",techaer: teacher)
    teacher.tutorials.append(tutorial)
    tutorial.corse = curs
    curs.courses.append(tutorial)
    
    
    
    let owner: Person2? = Person2 (name: "Cosmin",email: "cosmin@whatever.com")
    var car: Car? = Car(id: 10, type: "BMW")
    owner?.car = car
    car?.owner = owner

}catch {
    print("xatolik")
}

