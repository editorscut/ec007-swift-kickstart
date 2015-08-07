//: ### Composition
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

protocol Namable: CustomStringConvertible {
    func nameBadge() -> String
}

extension Namable {
    var description: String {
        return nameBadge()
    }
}

struct ConferenceAttendee {
    let name: String

}

extension ConferenceAttendee: Namable {
    func nameBadge() -> String {
        return "Hi, I'm \(name)."
    }
}

struct TutorialAttendee {
    let attendee: ConferenceAttendee
    let tutorial: String
    var name: String {
        return attendee.name
    }
}

extension TutorialAttendee: Namable {
    func nameBadge() -> String {
        return attendee.nameBadge() + " I'm taking \(tutorial)."
    }
}

let daniel = ConferenceAttendee(name: "Daniel")
let kimberli = TutorialAttendee(attendee: ConferenceAttendee(name: "Kimberli"), tutorial: "Swift Kickstart")


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
