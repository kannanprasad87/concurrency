//: [Previous](@previous)

import Foundation
import PlaygroundSupport

let conccurrentQueue = DispatchQueue(label: "com.queue.concurrent", attributes: .concurrent)

func doAsyncTaskOnConcurrentQueue() {
    for i in 0...3 {
        conccurrentQueue.sync{
            print(Thread.isMainThread ? "Main thread" : "Not main thread")
            
            let imageUrl = URL(string: "https://unsplash.com/photos/person-in-white-and-red-costume-h3SyJYsqYSo")!
            let _ = try! Data(contentsOf: imageUrl)
            print("\(i): finished Downloading")
        }
    }
}

doAsyncTaskOnConcurrentQueue()

conccurrentQueue.sync{
    for i in 0...3 {
        print(i)
    }
}



//: [Next](@next)
