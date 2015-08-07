//: ### By Value
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

enum PrimaryColor: String {
    case Red
    case Yellow
    case Blue
}

var color1 = PrimaryColor.Red
var color2 = color1

color1 = .Yellow
color1
color2

color2 = .Blue
color1
color2

color1 == color2

color1 = .Blue

color1 == color2

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
