//: ### External Names
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

func hello(name: String, affiliation: String) {
    print("Hello \(name) from \(affiliation).")
}

hello("Swift Programmer", affiliation: "Dim Sum Thinking")

func hello(name name: String = "World", times numberOfTimes: Int = 1) {
    for _ in 1 ... numberOfTimes {
        print("Hello, \(name)!")
    }
}

hello()
hello(name: "Swift Programmer")
hello(name: "Swift 2 Adopter", times: 3)
hello(times:2)


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
