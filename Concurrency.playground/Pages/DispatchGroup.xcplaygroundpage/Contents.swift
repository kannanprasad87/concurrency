//: [Previous](@previous)

import Foundation


let dispatchGroup = DispatchGroup()
let queue1 = DispatchQueue.global(qos: .userInitiated)

dispatchGroup.enter()
queue1.async {
    
    if Thread.isMainThread{
        print(" task running in main 🧵 ")
    }else{
        print(" task running in other 🧵 ")
    }
    
    for i in 1...5 {
        print(i)
    }
    dispatchGroup.leave()
}

dispatchGroup.enter()

queue1.async {
    print("🎬")
    sleep(5)
    print("🛑")
    dispatchGroup.leave()
}

dispatchGroup.enter()
queue1.async {
    print("🎬")
    sleep(10)
    print("🛑")
    dispatchGroup.leave()
}

dispatchGroup.notify(queue: .main) {
    print("All tasks finished")
}


//: [Next](@next)
