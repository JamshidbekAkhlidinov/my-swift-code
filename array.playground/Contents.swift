import Cocoa

var greeting = "Hello, playground"



var numbersFive = Array(repeating: 111, count:10)
var numbers = [1,2,23,6,3,4,9]

var string:[String] = []

print(numbersFive)
print(numbers)
print(string)

string = Array(repeating: "SALOM", count: 10)

print(string)

print(numbers.max() as Any)
print(numbers.min() as Any)
print(string.isEmpty)
print(string.count)

print(numbers.first!)
print(numbers.last!)

//element bor yo'qligini teksiradi
print(numbers.contains(99))

print(numbers)
numbers.append(99)
print(numbers)
numbers += [101,102]
print(numbers)
numbers.insert(77, at: 1)
print(numbers)
numbers.removeLast()
print(numbers)
numbers.remove(at: 1)
print(numbers)

//101 ning index ni aniqlab beryapdi
print(numbers.firstIndex(of: 101) as Any)

//0 dan 1 gacha elementlarni update qilish
numbers[0...1] = [88,11]
print(numbers)

//elementlar joyini almashtirish
numbers.swapAt(1,2)
print(numbers)


for (index, number) in numbers.enumerated() {
    print("\(index + 1). \(number)", terminator: " ")
}

func sumOfNumbers(in array: [Int])->Int {
    var sum = 0
    for number in array {
        sum += number
    }
    return sum
}
print()
let sum = sumOfNumbers(in: numbers)
print(sum)


var dictionaries = ["name":"Jamshidbek","lastname":"Akhlidinov","age":21,"gender":"Male"] as [String : Any]

print(dictionaries)
print(dictionaries["name"]!)

var dictionariesEmpty:[String:Any] = [:]
print(dictionariesEmpty)


var cites = ["Fargona","Andijon","Namangan","Navoiy"]
var kmes = [300,400,200,101]

let dictionariesCites = Dictionary(uniqueKeysWithValues: zip(kmes,cites))
let dictionariesKmes = Dictionary(uniqueKeysWithValues: zip(cites,kmes))

print(dictionariesCites)
print(dictionariesKmes)

let filter = dictionariesCites.filter{ $0.key > 200 }
print(filter)

//bosh harfi nge tenglarini chiqarish
var filterSymbol = dictionariesCites.filter{ $0.value.first == "N" }
print(filterSymbol)

//var group = Dictionary(grouping: dictionariesCites){ $0.value}
//print(group)
//print(group["Namangan"]!)
//
//
//var group2 = Dictionary(grouping: dictionariesCites){ $0.key}
//print(group2)


filterSymbol.updateValue("NAVOIY2", forKey: 101)
print(filterSymbol)
