import UIKit



struct Size{
    var width:Int = 80
    var height:Int = 60
    
    
    mutating func resize(newWidth:Int,newHeight:Int){
        self.width  = newWidth
        self.height = newHeight
    }
}

struct Position {
    var x:Int = 0
    var y:Int = 0
    
    mutating func  moveTo(newX:Int,newY:Int){
        self.x  = newX
        self.y  = newY
    }
}


class Window {
    var title:String = "New Window"
    var screenSize:Size
    var size:Size
    var position:Position
    var contents:String? = nil
    
    init(title: String, screenSize: Size, size: Size, position: Position, contents: String? = nil) {
        self.title = title
        self.screenSize = screenSize
        self.size = size
        self.position = position
        self.contents = contents
    }
}


let screenSize = Size(width: 800,height: 600)
var size = Size()
var position = Position()

var window = Window(title: "New Window", screenSize: screenSize, size: size, position: position)

window.title
