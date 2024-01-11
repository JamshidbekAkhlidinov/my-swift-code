//
//  main.swift
//  enum
//
//  Created by ustadev.uz on 11/01/24.
//

import Foundation

var day:WeekDay = .monday
var uzDay = "";

switch day {
    case .monday:
        uzDay = "Duyshanba"
    case .tuesday:
        uzDay = "Seyshanba"
    case .wendesday:
        uzDay = "Chorshanba"
    case .thurthday:
        uzDay = "Payshanba"
    case .friday:
        uzDay = "Juma"
    case .saturday:
        uzDay = "Shanba"
    case .sunday:
        uzDay = "Yakshanba"
}

print(day.rawValue, "-", uzDay)
print(day.helloDay)

var message = Message.error(message: "Salom qalesan")

switch message {
case .error(let message):
    print(message)
case .success(let code):
    print(code)
}


var coinpurse: [Coin] = [.penny, .quarter, .nickel, .dime, .penny, .dime, .quarter]

func addCoin(_ coin:Coin, to coinpurse: inout [Coin])->Int{
    coinpurse.append(coin)
    var sum = 0
    coinpurse.forEach { coin0 in
        sum += coin0.rawValue
    }
    return sum
}


var sum = addCoin(.dime, to: &coinpurse)
print(sum)

sum = addCoin(.dime, to: &coinpurse)
print(sum)

sum = addCoin(.penny, to: &coinpurse)
print(sum)

