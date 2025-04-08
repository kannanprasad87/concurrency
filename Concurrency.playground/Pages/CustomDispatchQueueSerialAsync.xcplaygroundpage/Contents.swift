//: [Previous](@previous)

import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true


let serialQueue = DispatchQueue(label: "com.queue.Serial")

func doAsyncTaskInSerialQueue() {
        for i in 1...3 {
            serialQueue.async {
            if Thread.isMainThread{
                print("\(i): task running in main 🧵 ")
            }else{
                print("\(i): task running in other 🧵 ")
            }
            let imageURL = URL(string: "https://upload.wikimedia.org/wikipedia/commons/0/07/Huge_ball_at_Vilnius_center.jpg")!
            let _ = try! Data(contentsOf: imageURL)
            print("\(i): finished Downloading")
        }
    }
}

doAsyncTaskInSerialQueue()

serialQueue.async {
    for i in 1...3 {
        print("\(i) ✴️ ")
    }
}

print("Last line in playground 🎉")

//: [Next](@next)
