/**
 * functions
 */

func myName(name:String) {
    print("Salom ", name)
}

myName(name: "Jamshidbek")


func printMultipleOf(_ value: Int, by number:Int){
    print("\(value) * \(number) = \(value * number)")
}

for i in 1...10 {
    printMultipleOf(i, by: 7)
}

printMultipleOf(99,by: 10)


for i in (1...5).reversed() {
    for j in 1...5 {
        if i <= j {
            print("*",terminator: "")
        }else{
            print(" ",terminator: "")
        }
        
    }
    print("")
}


for i in (1...9).reversed() {
    for j in 1...9 {
        if 
            i == 1 || j==1 || i==9 || j==9 ||
            i == 1+1 || j==1+1 || i==9-1 || j==9-1
        {
            print("*", terminator: "")
        }else{
            print(" ", terminator: "")
        }
    }
    print("")
}
