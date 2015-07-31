//: ### String Raw Values
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

enum Color: String {
    case Red = "Maraschino"
    case Green
    case Blue = "Blueberry"
}


let crayon = Color.Green
crayon.rawValue

let paintBrush = Color(rawValue: "Blueberry")

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
