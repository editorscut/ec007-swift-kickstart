func sayHello(toPeopleNamed people: String...) {
    if people.isEmpty {
        sayHello(toPeopleNamed: "World")
    }
    for person in people {
        println("Hello, \(person)!")
    }
}

sayHello(toPeopleNamed: "Swift Programmer", "Obj-C Old-timer")
sayHello()
