//: [Previous](@previous)

import Foundation

let queue1 = DispatchQueue(label: "Queue1")

let queue2 = DispatchQueue(label: "Queue2",
                           attributes: .initiallyInactive,
                           target: queue1)


queue1.async {
    for i in 0...5 {
        print(i)
    }
}

queue1.async {
    for i in 6...10 {
        print(i)
    }
}

queue2.async {
    for i in 11...15 {
        print(i)
    }
}

queue2.async {
    for i in 16...20 {
        print(i)
    }
}

//: [Next](@next)
