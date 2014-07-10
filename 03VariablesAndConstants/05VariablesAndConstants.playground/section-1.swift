let person = "Swift Programmer"

var greeting = "Hello, "
greeting + person

greeting = "Hi there, "
greeting + person

var newline:String
newline = "\n"
greeting + newline + person

// newline = y
//greeting = 7

func sayHello(toPersonWithName name:String = "World") -> String {
    return "Hello, \(name)!"
}

greeting = sayHello(toPersonWithName: person)

var people = ["Temporary Value", "Obj-C Old-timer"]
//people[0] = 7
people[0] = "LLVM Master"
// people.append(7) //doesn't work
people.append(person)
people
