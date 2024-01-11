import UIKit

class Person {
    var firstName:String
    var lastName:String
    var age:Int
    
    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
}

class Teacher : Person{
    var subjectName:String = ""
    var unvoni:String = ""
}

class Student:Person {
    var scholNumber:Int = 0
    var roomNumber:Int = 0
}

let person = Person(firstName: "Person", lastName: "People", age: 20)
person.firstName

let teacher = Teacher(firstName: "Techaer", lastName: "People", age: 22)
teacher.firstName
teacher.subjectName = "Matematika"
teacher.subjectName

var student = Student(firstName: "Student", lastName: "People", age: 18)
student.firstName
student.scholNumber = 20
student.scholNumber





class A{
    init(){
        print("Salom A")
    }
    
    func printA(){
        print("PRINT A")
    }
}

class B:A {
    override init() {
        super.init()
        print("Salom B")
    }
    func printB(){
        print("PRINT B")
    }
}

class C:B {
    override init() {
        super.init()
        print("Salom C")
    }
    func printC(){
        print("PRINT C")
    }
}


let a = A()
let b = B()
var c = C()

let objC = C()

if let objA = objC as? A {
    objA.printA()
} else {
    print("Casting amalga otmadi")
}
