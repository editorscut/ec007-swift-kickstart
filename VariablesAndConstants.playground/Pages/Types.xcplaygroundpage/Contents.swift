//: ### Types

let person = "Swift Programmer"
var greeting = "Hello, "
greeting = "Hi there, "
// can't change the type of greeting greeting = 7
greeting + person



func hello(name: String, numberOfTimes: Int) -> String {
    var tempGreeting = ""
    for _ in 1 ... numberOfTimes {
        tempGreeting += "Hello, \(name)!\n"
    }
    return tempGreeting
}


greeting = hello(person, numberOfTimes: 3)

hello

let greetingFunction = hello

greeting = greetingFunction("Surprised Reader", numberOfTimes: 4)


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
