/* initial hello1
func hello1(personName: String) {
    println("Hello, \(personName)")
}

hello1("Swift Programmer")
*/

func hello1(#personName : String) {
    println("Hello, \(personName)")
}

hello1(personName: "Swift Programmer")

/* initial hello2
func hello2(personName: String = "World") {
    println("Hello, \(personName)")
}

hello2(personName: "Swift Programmer")
*/
func hello2(toPersonWithName personName: String = "World") {
    println("Hello, \(personName)")
}

hello2(toPersonWithName: "Swift Programmer")

func hello3(toPersonWithName name: String) {
    println("Hello, \(name)")
}

hello3(toPersonWithName: "Swift Programmer")
