let newline = "\n"

var people:String[] = ["LLVM Master", "Obj-C Old-timer", "Swift Programmer"]

func createGreeting(withGreeting greeting:String) -> (String) -> String {
    func flexibleGreeting(name:String = "World") -> String {
        return "\(greeting), \(name)!"
    }
    return flexibleGreeting
}

let hello = createGreeting(withGreeting: "Hello")
let bonjour = createGreeting(withGreeting: "Bonjour")
let hey = createGreeting(withGreeting: "Hey")

hello("my friend")
bonjour("mon ami")
hey("buddy")

func greet(theFollowingPeople folks:String[], withMessage message:(String) -> String) -> String {
    var temporaryGreeting = ""
    for folk in folks {
        temporaryGreeting = temporaryGreeting + message(folk) + newline
    }
    return temporaryGreeting
}

greet(theFollowingPeople: people, withMessage: hey)
