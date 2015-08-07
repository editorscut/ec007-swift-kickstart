//: ### Optional Chaining
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

class StreetInformation {
    let streetNumberAndName: String?
    init(streetNumberAndName: String? = nil){
        self.streetNumberAndName = streetNumberAndName
    }
}

class Address {
    let streetInformation: StreetInformation?
    let city: String
    let state: String
    
    init(city: String, state: String, streetInformation: StreetInformation? = nil){
        self.city = city
        self.state = state
        self.streetInformation = streetInformation
    }
}


class ConferenceAttendee {
    let name: String
    let address: Address?
    
    init(name: String, address: Address? = nil) {
        self.name = name
        self.address = address
    }
}

let daniel = ConferenceAttendee(name: "Daniel")
let kimberli = ConferenceAttendee(name: "Kimberli", address: Address(city: "Cleveland", state: "OH", streetInformation: StreetInformation(streetNumberAndName: "1234 Elm Street")))

typealias StreetNumberAndName = String

func pyramidOfDoom(attendee: ConferenceAttendee) -> StreetNumberAndName {
    if let validAddress = attendee.address {
        if let validStreetInformation = validAddress.streetInformation {
            if let validStreetNumberAndName = validStreetInformation.streetNumberAndName {
                return validStreetNumberAndName
            }
        }
    }
    return "No street number and name available"
}

pyramidOfDoom(daniel)
pyramidOfDoom(kimberli)

func flattenedPyramid(attendee: ConferenceAttendee) -> StreetNumberAndName {
    if let validAddress = attendee.address, validStreetInformation = validAddress.streetInformation, validStreetNumberAndName = validStreetInformation.streetNumberAndName {
                return validStreetNumberAndName
            }
    return "No street number and name available"
}

flattenedPyramid(daniel)
flattenedPyramid(kimberli)

func guardVersion(attendee: ConferenceAttendee) -> StreetNumberAndName {
    guard let validAddress = attendee.address, validStreetInformation = validAddress.streetInformation, validStreetNumberAndName = validStreetInformation.streetNumberAndName else {
        return "No street number and name available"
    }
    return validStreetNumberAndName
}
guardVersion(daniel)
guardVersion(kimberli)

func optionalChainingVersion(attendee: ConferenceAttendee) -> StreetNumberAndName {
    return attendee.address?.streetInformation?.streetNumberAndName ?? "No street number and name available"
}

optionalChainingVersion(daniel)
optionalChainingVersion(kimberli)

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
