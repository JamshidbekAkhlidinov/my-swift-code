import UIKit

struct Location {
    static let const = 2003
    var x:Int
    var y:Int
    
    var calculateXY:Int {
//        get{
//           return x + y
//        }
//        set {
//            x = 20
//            y = 20
//        }
        
        didSet {
            if calculateXY > Location.const {
                calculateXY = oldValue
            }
        }
        willSet {
            print(newValue)
        }
        
    }
}

var storageLocation = Location(x: 12, y: 23, calculateXY: 44)
storageLocation.calculateXY
storageLocation.calculateXY = 2005
storageLocation.calculateXY



struct Tshort{
    var color:String
    var copasity:Int
    
    var sum:Int {
        get{
            var sum = 0
            
            switch color {
            case "red":
                sum += 10
            case "black":
                sum+=20
            default:
                sum += 0
            }
            
            switch copasity {
            case 100:
                sum += 100
            case 200:
                sum+=200
            default:
                sum += 0
            }
            return sum
        }
        
    }
}

var objTshort = Tshort(color: "red", copasity: 200)

objTshort.sum



struct Test {
    var count = 10
    
    mutating func addCount() -> Int{
        self.count += 1
        return count
    }
}


var test = Test()


test.addCount()
test.addCount()
test.addCount()
test.count



struct Math {
        
    static func fact(of number:Int ) -> Int{
        var s = (1...number).reduce(1, *)
        return s
    }
    
}

print(Math.fact(of: 3))

