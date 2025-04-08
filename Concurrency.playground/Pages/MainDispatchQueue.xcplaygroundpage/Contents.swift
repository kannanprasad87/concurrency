//: [Previous](@previous)

import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

//MARK: DispatchQueue Main queue

DispatchQueue.main.async {
    print(Thread.isMainThread ? "Execution in main thread" : "Not in main thread.")
}

var counter = 1

DispatchQueue.main.async {
    for i in 0...3 {
        counter = i
        print ("\(counter) ✡️")
    }
}

for i in 4...6 {
    counter = i
    print(counter)
}


DispatchQueue.main.async {
    counter = 9
    print (counter)
}

DispatchQueue.global().async {
    DispatchQueue.main.sync {
        counter = 10
        print(counter)
    }
}

//: [Next](@next)

