//: ### Associated Values
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

enum PrimaryColor {
    case Red
    case Yellow
    case Blue
}

enum Desktop {
    case Black
    case White
    case Color(PrimaryColor)
}

let blackBackground = Desktop.Black
let whiteBackground = Desktop.White

let redBackground = Desktop.Color(PrimaryColor.Red)
let yellowBackground = Desktop.Color(.Yellow)
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
