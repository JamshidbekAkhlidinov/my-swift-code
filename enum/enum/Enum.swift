//
//  Enum.swift
//  enum
//
//  Created by ustadev.uz on 11/01/24.
//

import Foundation

enum WeekDay: String{
    case monday = "Monday"
    case tuesday
    case wendesday
    case thurthday
    case friday
    case saturday
    case sunday
    
    var helloDay:String {
        return "Salom \(rawValue)"
    }
}


enum Message {
    case success(code:Int)
    case error(message:String)
}


enum Coin: Int {
    case penny = 1
    case nickel = 5
    case dime = 10
    case quarter = 25
}

