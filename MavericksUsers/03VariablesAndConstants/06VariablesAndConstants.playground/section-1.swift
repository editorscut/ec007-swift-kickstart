let newline = "\n"

var people = ["LLVM Master", "Obj-C Old-timer", "Swift Programmer"]

func createGreeting(withGreeting greeting:String) -> (String) -> String {
    func flexibleGreeting(name:String) -> String {
        return "\(greeting), \(name)!"
    }
    return flexibleGreeting
}

let hello = createGreeting(withGreeting: "Hello")
let bonjour = createGreeting(withGreeting: "Bonjour")
let hey = createGreeting(withGreeting: "Hey")

func greet(theFollowingPeople folks:[String], withMessage message:(String) -> String) -> (countOfPeople: Int,completeGreeting: String) {
    var temporaryGreeting = ""
    for folk in folks {
        temporaryGreeting = temporaryGreeting + message(folk) + newline
    }
    return (folks.count, temporaryGreeting)
}

greet(theFollowingPeople: people, withMessage: hey)

greet(theFollowingPeople: people, withMessage: hey).0

let results = greet(theFollowingPeople: people, withMessage: hey)
results.0
results.1

let (numberOfPeople, fullMessage) = greet(theFollowingPeople: people, withMessage: hey)
numberOfPeople
fullMessage

let (numberOfPeopleInResults, _) = results
numberOfPeopleInResults

results.countOfPeople
results.completeGreeting
