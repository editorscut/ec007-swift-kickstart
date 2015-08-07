//: ### Creating a Class
//: [TOC](TOC) | Previous | [Next](@next)

class ConferenceAttendee {
    var name = "Daniel"
    var hometown = "Shaker Heights"
}

let attendee = ConferenceAttendee()
let otherAttendee = attendee

attendee.name
attendee.hometown
attendee.name = "Danny"
otherAttendee.hometown = "Cleveland"
attendee.name
attendee.hometown
otherAttendee.name
otherAttendee.hometown
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
