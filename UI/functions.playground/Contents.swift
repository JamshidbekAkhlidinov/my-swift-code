import UIKit


//1 func
func sum(a:Int, b:Int) -> Int{
    if a == b {
        return 3 * (a + b)
    }
    return a + b
}


sum(a: 10,b: 10)
sum(a: 10,b: 5)


//2 func
func absolut(n:Int)-> Int {
    var a = 51
    
    if a == n {
        return abs( 2 * a - n)
    }
    return abs( a - n)
}

absolut(n: 10)
absolut(n: 52)
absolut(n: 60)


//3 func
func isSumOrDifferenceEqualTo20(_ num1: Int, _ num2: Int) -> Bool {
    return num1 == 20 || num2 == 20 || num1 + num2 == 20
}

isSumOrDifferenceEqualTo20(10, 20)
isSumOrDifferenceEqualTo20(15, 5)  
isSumOrDifferenceEqualTo20(5, 6)

//4 func
func isOnePositiveAndOneNegative(_ num1: Int, _ num2: Int) -> Bool {
    return (num1 > 0 && num2 < 0) || (num1 < 0 && num2 > 0)
}
let testResult4a = isOnePositiveAndOneNegative(5, -10)  // true
let testResult4b = isOnePositiveAndOneNegative(8, 12)    // false

//5 func
func addPrefixLS(_ input: String) -> String {
    return input.hasPrefix("ls") ? input : "ls" + input
}
let testResult5a = addPrefixLS("Swift")  // "lsSwift"
let testResult5b = addPrefixLS("language")  // "language"

//6 func
func removeCharacterAt(_ input: String, index: Int) -> String {
    guard index >= 0, index < input.count else {
        return input
    }
    var modifiedString = input
    let i = input.index(input.startIndex, offsetBy: index)
    modifiedString.remove(at: i)
    return modifiedString
}
let testResult6a = removeCharacterAt("Hello", index: 2)  // "Helo"
let testResult6b = removeCharacterAt("Swift", index: 10)

// 7. func
func reverseString(_ input: String) -> String {
    return String(input.reversed())
}
let testResult7a = reverseString("apple")  // "elppa"
let testResult7b = reverseString("12345")  // "54321"

// 8.func
func is3Or5Multiple(_ number: Int) -> Bool {
    return number % 3 == 0 || number % 5 == 0
}
let testResult8a = is3Or5Multiple(9)  // true
let testResult8b = is3Or5Multiple(7)  // false

// 9. func
func replaceFirstTwoCharacters(_ input: String, with replacement: String) -> String {
    guard input.count >= 2 else {
        return input
    }
    let index = input.index(input.startIndex, offsetBy: 2)
    return replacement + input.suffix(from: index)
}
let testResult9a = replaceFirstTwoCharacters("Swift", with: "Go")  // "Goift"
let testResult9b = replaceFirstTwoCharacters("Java", with: "C#")  // "C#va"


// 10. func
func isBetween10And30(_ num1: Int, _ num2: Int) -> Bool {
    let minNum = min(num1, num2)
    let maxNum = max(num1, num2)
    return minNum >= 10 && maxNum <= 30
}
let testResult10a = isBetween10And30(15, 25)  // true
let testResult10b = isBetween10And30(5, 40)   // false
