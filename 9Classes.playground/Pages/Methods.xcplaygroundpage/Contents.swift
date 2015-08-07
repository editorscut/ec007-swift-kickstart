//: ### Methods
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

class ConferenceAttendee {
    let name, hometown: String
    
    init(name: String, hometown: String = "Cupertino") {
        self.name = name
        self.hometown = hometown
    }
    func nameBadge() -> String {
        return "Hi, I'm \(name) from \(hometown)."
    }
}

extension ConferenceAttendee: CustomStringConvertible {
    var description: String {
        return nameBadge()
    }
}

class TutorialAttendee: ConferenceAttendee {
    let tutorial: String
    
    init(name: String, tutorial: String, hometown: String = "Cupertino" ) {
        self.tutorial = tutorial
        super.init(name: name, hometown: hometown)
    }
    override func nameBadge() -> String {
        return super.nameBadge() + " I'm taking \(tutorial)."
    }
}

let daniel = ConferenceAttendee(name: "Daniel")
let kimberli = TutorialAttendee(name: "Kimberli", tutorial: "Swift Kickstart")
daniel.nameBadge()
kimberli


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
