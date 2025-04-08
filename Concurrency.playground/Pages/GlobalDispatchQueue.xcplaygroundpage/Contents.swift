//: [Previous](@previous)

import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true


//MARK: DispatchQueue Global queue

DispatchQueue.global(qos:.userInteractive).async {
    print(Thread.isMainThread ? ".userInteractive execution in main thread" : ".userInteractive not in main thread.")
    for i in 100...105 {
        print(i)
    }
}

DispatchQueue.global(qos:.userInitiated).async {
    print(Thread.isMainThread ? ".userInitiated execution in main thread" : ".userInitiated not in main thread.")
    for i in 200...205 {
        print(i)
    }
}

DispatchQueue.global(qos:.default).async {
    print(Thread.isMainThread ? ".default in main thread" : ".default not in main thread.")
    for i in 300...305 {
        print(i)
    }
}

DispatchQueue.global(qos:.utility).async {
    print(Thread.isMainThread ? ".utility in main thread" : ".utility not in main thread.")
    for i in 400...405 {
        print(i)
    }
}

DispatchQueue.global(qos:.background).async {
    print(Thread.isMainThread ? ".background in main thread" : ".background not in main thread.")
    for i in 500...505 {
        print(i)
    }
}



//: [Next](@next)
