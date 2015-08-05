//: ### The Switch Statement
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

import UIKit

enum Color {
    case Red
    case Green
    case Blue
}

func actualColor(color: Color) -> UIColor {
    switch color {
    case .Red:
        return UIColor.redColor()
    case .Green:
        return UIColor.greenColor()
    case .Blue:
        return UIColor.blueColor()
    }
}

let crayon = Color.Green
actualColor(crayon)

let paintBrush = Color.Red
actualColor(paintBrush)

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
