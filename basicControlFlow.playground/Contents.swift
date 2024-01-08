import Cocoa

var switchState = false

var counter = 1;

while counter <= 10 {
    print(counter,switchState)
    counter += 1
    switchState.toggle()
}

counter = 1
repeat {
    print(counter,switchState)
    counter += 1
    switchState.toggle()
}while counter <= 10


for i in 1...100 {
    print(i)
}


for i in stride(from: 1, through: 100, by: 2) {
    print(i)
}


