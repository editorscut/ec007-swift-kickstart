//: ### Subclasses
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

class ConferenceAttendee {
    let name, hometown: String
    
    init(name: String, hometown: String = "Cupertino") {
        self.name = name
        self.hometown = hometown
    }
}

class TutorialAttendee: ConferenceAttendee {
    let tutorial: String
    
    init(name: String, tutorial: String, hometown: String = "Cupertino" ) {
        self.tutorial = tutorial
        super.init(name: name, hometown: hometown)
    }
}

let daniel = ConferenceAttendee(name: "Daniel")
let kimberli = TutorialAttendee(name: "Kimberli", tutorial: "Swift Kickstart")
daniel.name
daniel.hometown
kimberli.name
kimberli.hometown
kimberli.tutorial


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
