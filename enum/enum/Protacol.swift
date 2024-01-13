//
//  Protacol.swift
//  enum
//
//  Created by ustadev.uz on 12/01/24.
//

import Foundation

protocol Person{
    var name:String { get set }
}

extension Person {
    func sayHello()->String{
      return "Salom \(self.name)"
    }
}

class People:Person{
    var name: String
    
    init(name: String) {
        self.name = name
    }
}



protocol Bank {
    associatedtype CurrencyType
    var money:CurrencyType { get set }
}

struct BankOfAmerika:Bank{
    typealias CurrencyType = Double
    var money: Double
}

struct BankOfRussia:Bank{
    typealias CurrencyType = Int
    var money: Int
}


// Protokollar
protocol Feeding {
    func feed()
}

protocol Caging {
    func cage()
}

protocol Grooming {
    func groom()
}

protocol Training {
    func train()
}

protocol Swimming {
    func swim()
}

// Uy hayvonlari uchun protokollarni qabul qiluvchi structlar
struct Dog: Feeding, Caging, Training {
    var name: String
    
    func feed() {
        print("\(name) ovqatlanadi")
    }
    
    func cage() {
        print("\(name) qafasga solinadi")
    }
    
    func train() {
        print("\(name) mashqlar bilan shug'ullanadi")
    }
}

struct Bird: Feeding, Caging {
    var name: String
    
    func feed() {
        print("\(name) ovqatlanadi")
    }
    
    func cage() {
        print("\(name) qafasga solinadi")
    }
}

struct Fish: Feeding, Swimming {
    var name: String
    
    func feed() {
        print("\(name) ovqatlanadi")
    }
    
    func swim() {
        print("\(name) hovuzda suziladi")
    }
}
