//: ### Loading and Unloading
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

class ConferenceLocation {
    let city: String
    
    init(city: String = "San Francisco"){
        self.city = city
        print("Creating Conference Location")
    }
}


class ConferenceAttendee {
    let name: String
    lazy var location = ConferenceLocation()
    
    init(name: String) {
        self.name = name
        print("Creating Conference Attendee")
    }
    deinit {
        // cleanup resources
    }
}

let daniel = ConferenceAttendee(name: "Daniel")
daniel.location

typealias StreetNumberAndName = String



//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
