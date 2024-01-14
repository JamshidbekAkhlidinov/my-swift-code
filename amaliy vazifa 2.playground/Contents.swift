import UIKit

struct Size {
    var width: Int
    var height: Int
}

struct Position {
    var x: Int
    var y: Int
}

class Window {
    var title: String
    var size: Size
    var position: Position
    var content: String?

    init(title: String, width: Int, height: Int, x: Int, y: Int, content: String? = nil) {
        self.title = title
        self.size = Size(width: max(width, 1), height: max(height, 1))
        self.position = Position(x: max(x, 0), y: max(y, 0))
        self.content = content
    }

    func resize(to newSize: Size) {
        size.width = max(newSize.width, 1)
        size.height = max(newSize.height, 1)
        position.x = min(position.x, size.width - 1)
        position.y = min(position.y, size.height - 1)
    }

    func move(to newPosition: Position) {
        position.x = min(newPosition.x, size.width - 1)
        position.y = min(newPosition.y, size.height - 1)
    }

    func update(title: String) {
        self.title = title
    }

    func update(text: String?) {
        self.content = text
    }

    func display() -> String {
        var displayString = "\(title)\nPosition: (\(position.x), \(position.y)), Size: (\(size.width) x \(size.height))\n"
        if let content = content {
            displayString += "\(content)\n"
        } else {
            displayString += "Bu oyna atayin bo’sh qoldirildi\n"
        }
        return displayString
    }
}

// Yangi oyna yaratish
let mainWindow = Window(title: "Asosiy Oyna", width: 400, height: 300, x: 100, y: 100, content: "Bu asosiy oyna")
print(mainWindow.display())
