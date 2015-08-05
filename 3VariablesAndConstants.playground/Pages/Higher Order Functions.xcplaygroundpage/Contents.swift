//: ### Higher Order Functions
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

let friend = "Daniel"

func hello(name: String) -> String {
    let greeting = "Hello, \(name)!"
    return greeting
}

hello(friend)

func bonjour(name: String) -> String {
    let greeting = "Bonjour, \(name)!"
    return greeting
}

bonjour(friend)

func greet(name: String, withSalutation salutation: String) -> String {
    let greeting = "\(salutation), \(name)!"
    return greeting
}

greet(friend, withSalutation: "Hi there")

func createGreetingWithSalutation(salutation: String) -> (String) -> String {
    func greetingFunction(name: String) -> String {
        let greeting = "\(salutation), \(name)!"
        return greeting
    }
    return greetingFunction
}

let heyThere = createGreetingWithSalutation("Hey there")
heyThere(friend)

createGreetingWithSalutation("Hi")(friend)

func useGreeting(greetingFor:(String) -> (String), forPeopleWithName people: String...) -> String {
    var tempGreeting = ""
    for person in people {
        tempGreeting += greetingFor(person) + "\n"
    }
    return tempGreeting
}

useGreeting(heyThere, forPeopleWithName: "Swift Programmer", "Swift 2 Adopter")

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
