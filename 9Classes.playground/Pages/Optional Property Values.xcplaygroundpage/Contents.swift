//: ### Optional Property Values
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

class ConferenceAttendee {
    let name: String
    let hometown: String?
    
    init(name: String, hometown: String? = nil) {
        self.name = name
        self.hometown = hometown
    }
    func nameBadge() -> String {
        let greeting = "Hi, I'm \(name)"
        guard let validHometown = hometown else {
            return greeting + "."
        }
        return greeting + " from \(validHometown)."
    }
}

extension ConferenceAttendee: CustomStringConvertible {
    var description: String {
        return nameBadge()
    }
}

class TutorialAttendee: ConferenceAttendee {
    let tutorial: String
    
    init(name: String, tutorial: String, hometown: String? = nil ) {
        self.tutorial = tutorial
        super.init(name: name, hometown: hometown)
    }
    override func nameBadge() -> String {
        return super.nameBadge() + " I'm taking \(tutorial)."
    }
}

let daniel = ConferenceAttendee(name: "Daniel")
let kimberli = TutorialAttendee(name: "Kimberli", tutorial: "Swift Kickstart")
daniel
kimberli


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
