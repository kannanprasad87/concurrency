//: [Previous](@previous)

import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

var value: Int = 2

let concurrentQueue = DispatchQueue(label: "queue", attributes: .concurrent)

concurrentQueue.async(flags: .barrier) {
    for i in 0...3 {
        value = i
        print("\(value) ✴️")
    }
}

concurrentQueue.async(flags: .barrier) {
    for j in 4...6 {
        value = j
        print("\(value) ✡️")
    }
}

concurrentQueue.async(flags: .barrier) {
    value = 9
    print(value)
}

concurrentQueue.async(flags: .barrier) {
    value = 14
    print(value)
}

//: [Next](@next)
