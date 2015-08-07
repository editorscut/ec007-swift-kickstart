//: ### Composition
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

//: This is the "before" picture. The "after" picture is on the next page.

class ConferenceAttendee {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    func nameBadge() -> String {
        return "Hi, I'm \(name)."
    }
}
extension ConferenceAttendee: CustomStringConvertible {
    var description: String {
        return nameBadge()
    }
}
class TutorialAttendee: ConferenceAttendee {
    let tutorial: String
    init(name: String, tutorial: String){
        self.tutorial = tutorial
        super.init(name: name)
    }
    override func nameBadge() -> String {
        return super.nameBadge() + " I'm taking \(tutorial)."
    }
}

let daniel = ConferenceAttendee(name: "Daniel")
let kimberli = TutorialAttendee(name: "Kimberli", tutorial: "Swift Kickstart")


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
