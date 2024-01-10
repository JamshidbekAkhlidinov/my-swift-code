import UIKit

var greeting = "Hello playground salom"

let spaceIndex = greeting.firstIndex(of: " ")!

print(greeting[greeting.startIndex ..< spaceIndex])

print(greeting[spaceIndex ..< greeting.endIndex])




func wordCount( _ a : String) -> Int{
    var count = 1;
    for i in a {
        if i == " " {
            count += 1
        }
    }
    return count
}
var str = "Salom mening ismim Jamshidbek"

wordCount(str)

func reverseWords( _ str : String) {

//    var array = str.split(separator: " ")
//    array.forEach { s in
//        print(String(s.reversed()),terminator: " ")
//    }
    
    var array = str.components(separatedBy: " ")
    var reversedStr = array.map{ String($0.reversed()) }
    var addedStr = reversedStr.joined(separator: " ")
    print(addedStr)
    
}
reverseWords(str)
