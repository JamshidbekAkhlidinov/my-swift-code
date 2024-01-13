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



var people = People(name: "Jamshidbek")
print(people.sayHello())



// Massivlar protokol yordamida element turi sifatida e'lon qilinadi
var feedingArray: [Feeding] = [Dog(name: "Bob"), Bird(name: "Charlie"), Fish(name: "Nemo")]

for animal in feedingArray {
    animal.feed()
}

var cagingArray: [Caging] = [Dog(name: "Buddy"), Bird(name: "Tweety")]

for animal in cagingArray {
    animal.cage()
}



//Generics
var kiber = Kiber(name: "Cats 1", animal: Cats(name: "Cats"))

print(kiber.name)
print(kiber.animal.name)


func adNumber<T:Numeric>(a:T, b:T)->T{
    return a+b
}

print(adNumber(a: 20, b: 30))
print(adNumber(a: 44, b: 34))


//Encupsulation
var encupsulation = Encupsulation()
encupsulation.setName(name: "Jamshidbek")
print(encupsulation.getName())





// pattern matching
let point = (2, 2)

switch point {
case (0, 0):
    print("Nuqta boshi")
case (let x, 0):
    print("X o'qi \(x)")
case (0, let y):
    print("Y o'qi \(y)")
case (let x, let y) where x == y:
    print("X va Y o'qlari bir xil qiymatga ega")
default:
    print("Noma'lum nuqta")
}

let age = 25

switch age {
case 0..<18:
    print("Yosh bola")
case 18..<65:
    print("Kattalar")
default:
    print("Qariyalar")
}


let optionalValue: Int? = 42

switch optionalValue {
case nil:
    print("Qiymat mavjud emas")
case let x? where x % 2 == 0:
    print("Juft son: \(x)")
case let x? where x % 2 != 0:
    print("Toq son: \(x)")
default:
    print("Noma'lum holat")
}


//Error handling

enum ErrorEnum:Error{
    case invalidValue
    case invalideName
}


let array:[String?] = ["salom",nil,"qale","alex",nil,"jonibek"]

class robotManager {
    
    func setCodeToRobot( _ code:Int) throws ->Bool{
        if code == 200 {
            throw ErrorEnum.invalidValue
        }
        
        return true
    }
    
}


let test = robotManager()

do{
   print( try test.setCodeToRobot(200))
}
catch ErrorEnum.invalidValue{
    print("invalid value")
}catch ErrorEnum.invalideName{
    print("invalida name")
}




///Masala
enum ErrorNumberEnum:Error {
    case notNumber
}

func convertNumber(_ str:String) throws -> String {
    guard let lastCharacter = str.last,
          let lastDigit = Int(String(lastCharacter)) else {
        throw ErrorNumberEnum.notNumber
    }
    
    if lastDigit % 2 == 0 {
        var modifiteString = str
        modifiteString.removeLast()
        modifiteString.append(String(lastDigit+1))
        return modifiteString
    }
    
    throw ErrorNumberEnum.notNumber
}

do {
    print(try convertNumber("Salom1"))
}

catch ErrorNumberEnum.notNumber {
    print("Raqamga aylantirib bo'lmadi")
}catch {
    print("Noma'lum xatolik")
}



//2-masala

enum NumberError: Error {
    case notInteger
    case negativeNumber
}

func separateIntegers(_ values: [Any]) throws -> [Int] {
    var integers: [Int] = []

    for value in values {
        // Agar qiymat Int emas bo'lsa yoki qiymatni Intga o'zgartirib bo'lmaydigan tilda kiritilsa
        guard let intValue = value as? Int else {
            throw NumberError.notInteger
        }

        // Agar son manfiy bo'lsa xato tashlash
        guard intValue >= 0 else {
            throw NumberError.negativeNumber
        }

        integers.append(intValue)
    }

    return integers
}

// Test qilish
do {
    let numbers = try separateIntegers([5, 23,34])
    print("Sonlar: \(numbers)")
} catch NumberError.notInteger {
    print("Xatolik: Butun son kiritilmagan yoki kiritilgan qiymatni butun sona o'zgartirib bo'lmaydigan tilda kiritilgan")
} catch NumberError.negativeNumber {
    print("Xatolik: Manfiy son kiritilgan")
} catch {
    print("Noma'lum xatolik")
}

