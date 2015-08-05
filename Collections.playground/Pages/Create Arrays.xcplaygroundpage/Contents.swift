//: ### Create Arrays
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

let people = ["Swift Programmer", "Obj-C Old-timer"]

let morePeople : [String]

morePeople = ["Swift 2 Adopter", "Protocol Pro"]

func createGreetingWithSalutation(salutation: String) -> (String) -> String {
    func greetingFunction(name: String) -> String {
        let greeting = "\(salutation), \(name)!"
        return greeting
    }
    return greetingFunction
}

let greetings = [createGreetingWithSalutation("Hello"),
    createGreetingWithSalutation("Bonjour"),
    createGreetingWithSalutation("Hey")]

let helloSwiftProgrammer = greetings[0](people[0])

let salutations = ["Hello", "Bonjour", "Hey"]

let simplerGreetings = salutations.map(createGreetingWithSalutation)

let heyProtocolPro = simplerGreetings[2](morePeople[1])

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
