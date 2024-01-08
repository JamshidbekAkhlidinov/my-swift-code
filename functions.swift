/*  
 * functions
*/

func myName(name:String) {
    print("Salom ", name)
}

myName(name: "Jamshidbek")


func printMultipleOfFive(value: Int){
    print("\(value) * 5 = \(value * 5)")
}

for i in 1...10 {
    printMultipleOfFive(value: i)
}

printMultipleOfFive(value: 99)
