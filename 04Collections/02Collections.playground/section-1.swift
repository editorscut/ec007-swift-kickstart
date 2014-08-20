var people:[String]
// much later ...
people = ["Swift Programmer", "Obj-C Old-timer"]
func createGreeting(withGreeting greeting: String) -> (String) -> String {
    func flexibleGreeting(name: String = "World") -> String {
        return "\(greeting), \(name)!"
    }
    return flexibleGreeting
}
var greetings = [createGreeting(withGreeting: "Hello"),
                 createGreeting(withGreeting: "Bonjour"),
                 createGreeting(withGreeting: "Hey")]

func greet(theFollowingPeople folks: [String], withMessages messages: [(String) -> String]) -> String {
    var temporaryGreeting = ""
    for folk in folks {
        for message in messages {
        temporaryGreeting = temporaryGreeting + message(folk) + "\n"
        }
        temporaryGreeting = temporaryGreeting + "\n"
    }
    return temporaryGreeting
}
greet(theFollowingPeople: people, withMessages: greetings)
