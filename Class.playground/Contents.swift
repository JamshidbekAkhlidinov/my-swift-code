import UIKit

struct Grade{
    let fanNomi:String
    let bal:Int
}

class Student {
    var firsName:String
    var lastName:String
    var age:Int
    var grades: [Grade] = []
    
    init(firsName: String, lastName: String, age: Int, grades: [Grade]) {
        self.firsName = firsName
        self.lastName = lastName
        self.age = age
        self.grades = grades
    }
}

let manth = Grade(fanNomi: "Math", bal: 20)
let motherlind = Grade(fanNomi: "Ona tili", bal: 50)

var jon = Student(firsName: "Jon", lastName: "Mac", age: 20, grades: [manth,motherlind])



