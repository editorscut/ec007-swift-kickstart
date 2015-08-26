//: ### Multiple Parameters
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)


func hello() {
    hello("World")
}
func hello(name: String) {
    print("Hello, \(name)!")
}
func hello(name: String, numberOfTimes: Int) {
    for _ in 1 ... numberOfTimes {
        hello(name)
    }
}
func hello(name: String, numberOfTimes: Int, openParens: String, closeParens: String) {
    for i in 1 ... numberOfTimes {
        print(openParens, i, closeParens, separator:"", terminator: " ")
        hello(name)
    }
}

hello()
hello("Swift Programmer")
hello("Swift 2 Adopter", numberOfTimes: 3)
hello("Programmer with Boundaries", numberOfTimes: 5, openParens: "<", closeParens: ">")


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
