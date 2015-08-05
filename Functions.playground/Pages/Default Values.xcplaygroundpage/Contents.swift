//: ### Default Values
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)


func hello(name: String = "World", numberOfTimes: Int = 1) {
    for _ in 1 ... numberOfTimes {
        print("Hello, \(name)!")
    }
}

hello()
hello("Swift Programmer")
hello("Swift 2 Adopter", numberOfTimes: 3)
hello(numberOfTimes:2)


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
