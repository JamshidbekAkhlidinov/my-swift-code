import UIKit


//var adding = { (a:Int, b:Int) in
//    var c = a + b
//    return c
//}

var adding: (Int, Int) -> Int = { (a, b) in
    a + b
}

let sum = adding(10, 20)

print(sum)

let number = [99,1,2,3,4,5,6,7,8,9,10]

number.forEach{
    print("\($0): \($0*$0)",terminator: " \n")
}



var filter  = number.filter{
    $0 > 6
}
print(filter)


var stringAndInteger = ["1","2","3","4","five","six","7"]

let int = stringAndInteger.compactMap{
    Int($0)
}


print(int)



func repeatTask(times:Int,task: () -> Void){
    for i in 1...times {
        task()
    }
}


repeatTask(times: 10, task: {
    print("Mohirdev iOS-Praktikum!")
})
