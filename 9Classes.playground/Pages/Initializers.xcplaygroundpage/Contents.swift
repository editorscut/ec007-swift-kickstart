//: ### Initializers
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

class ConferenceAttendee {
    let name, hometown: String
    init(name: String, hometown: String = "Cupertino") {
        self.name = name
        self.hometown = hometown
    }
}

let daniel = ConferenceAttendee(name: "Daniel", hometown: "Shaker Heights")
let kimberli = ConferenceAttendee(name: "Kimberli")
kimberli.hometown


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
