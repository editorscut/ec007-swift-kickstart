let person = "Swift Programmer"

var greeting = "Hello, "
greeting + person

greeting = "Hi there, "
greeting + person

var newline: String
newline = "\n"
greeting + newline + person

//newline = 7
//greeting = 7

func sayHello(toPersonWithName name: String) -> String {
    return "Hello, \(name)!"
}

greeting = sayHello(toPersonWithName: person)

var people = ["Temporary Value", "Obj-C Old-timer"]
// people[0] = 7
people[0] = "LLVM Master"
// people.append(7) //doesn't work
people.append(person)
people

let simpleProduct = 5 * 3.4

let someInt = 5
let someDouble = 3.4
/* version 1
let product = someInt * someDouble
*/

let anotherDouble = Double(someInt)
let product = Double(someInt) * someDouble

