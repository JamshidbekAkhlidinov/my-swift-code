import Cocoa

var greeting:String? = "Hello, playground"

greeting = nil

if greeting != nil {
    print(greeting!)
}

print(greeting ?? "NoName")


// ikkinchi

var greeting2 :String? = "Hello, playground"
//greeting2 = nil


if let text2 = greeting2 {
    print(text2)
}


func guardFunct( _ name:String?){
    
    guard let nameGuard = name else {
        return
    }
    
    print(nameGuard)
    
}


guardFunct(greeting2)


//Homework
//1-exercise Bo'linish

func divideIfWhole( _ a:Int, _ b:Int){
    var s:Int
    if a % b == 0 {
        s = a / b
        print("Ha u \(s) marta bo'linadi")
        return
    }
        s = 0
        print("Bo'linmaydi")
        return
}

divideIfWhole(10,2)
