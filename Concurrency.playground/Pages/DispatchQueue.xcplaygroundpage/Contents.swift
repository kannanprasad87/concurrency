//: [Previous](@previous)

import Foundation

let serialQueue = DispatchQueue(label: "com.serial.test")

let concurrentQueue = DispatchQueue(label: "com.concurrent.test", attributes: [.concurrent, .initiallyInactive], target: serialQueue)

concurrentQueue.activate()


concurrentQueue.async {
    for j in 0...3 {
        print(j)
    }
}

concurrentQueue.async {
    for j in 10...15 {
        print(j)
    }
}

/*
 
 0
 1
 2
 3
 10
 11
 12
 13
 14
 15
 
 */

//: [Next](@next)
