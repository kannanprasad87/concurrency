import Combine

print("===============================")
let publisher = Just(100)

let subscriber = publisher.sink { value in
    print("received value from publisher \(value)")
}

print("===============================")

let anotherSubscription = publisher.sink { completion in
    print(completion.hashValue)
} receiveValue: { value in
    print("received value from publisher \(value)")
}

print("===============================")

let publisherTwo = [1,2,3,4,5].publisher

let subscriberTwo = publisherTwo.sink { value in
    print(value)
}

print("===============================")

class SampleClass {
    
    var property: Int = 0 {
        didSet {
            print("Value changed")
        }
    }
}

let object = SampleClass()
//object.property

let subscription3 = publisherTwo.assign(to: \.property, on: object)
object.property = 10


let bigNumber = 100__000__000_000__000_000



let tempratureInCelsius = 36.6

let tempratureInFahrenheit = (tempratureInCelsius * 9/5) + 32

print("Temperature in Celsius \(tempratureInCelsius) is equal to \(tempratureInFahrenheit) in Fahrenheit")


let fruits = ["apple", "orange", "grapes"]

let reveredArray = fruits.reversed()

print(reveredArray)

let fruitsDictionary = ["Monday": "Apple", "Tuesday" : "Orange", "Wednesday": "Grapes"]

print(fruitsDictionary["Kannan",default: "Banana"])

print(fruitsDictionary["Tuesday", default: " "])

var actors = Set<String>()

actors.insert("Mohanlal")
actors.insert("Mammootty")

print(actors)

actors.insert("Mohanlal")

actors.contains("Mohanlal")
print(actors)


enum Weekday {
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
    
    var isWeekend: Bool {
        switch self {
        case .saturday, .sunday:
            true
        default:
            false
        }
    }
}


let today: Weekday = .monday

today.isWeekend
