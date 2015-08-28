//: ### Required Initializers
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

class ConferenceAttendee {
    let name: String
    let hometown: String?
    
    required init?(name: String, hometown: String? = nil) {
        self.name = name
        self.hometown = hometown
        if hometown == nil {
            return nil
        }
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
    
    
    
    init(name: String, tutorial: String, hometown: String ) {
        self.tutorial = tutorial
        super.init(name: name, hometown: hometown)!
    }

//    required init?(name: String, hometown: String?) {
//        self.tutorial = "No tutorial set"
//        super.init(name: name, hometown: hometown)
//        return nil
//    }
    
    required init(name: String, hometown: String? = nil) {
        self.tutorial = "no tutorial at all"
        super.init(name: name, hometown: "this hotel")!
    }
    override func nameBadge() -> String {
        return super.nameBadge() + " I'm taking \(tutorial)."
    }
}

let daniel = ConferenceAttendee(name: "Daniel")
let maggie = ConferenceAttendee(name: "Maggie", hometown: "Cleveland")
let kimberli = TutorialAttendee(name: "Kimberli", tutorial: "Swift Kickstart", hometown: "Shaker Heights")
let tara = TutorialAttendee(name: "Tara")
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
