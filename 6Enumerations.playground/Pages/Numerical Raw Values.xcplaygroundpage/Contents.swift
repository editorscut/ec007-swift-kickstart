//: ### Numerical Raw Values
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
import UIKit

enum Color: Int {
    case Yellow = 1
    case Green
    case Blue = 4
    case Purple
    
    var actualColor: UIColor {
        return UIColor(hue: hue, saturation: 1, brightness: 1, alpha: 1)
    }
    var hue: CGFloat {
        return CGFloat(rawValue) / 6
    }
}

let crayon = Color.Green
crayon.rawValue
crayon.actualColor

enum Color2: CGFloat {
    case Yellow = 0.16667
    case Green  = 0.33333
    case Blue = 0.666667
    case Purple = 0.833333
    
    var actualColor: UIColor {
        return UIColor(hue: rawValue, saturation: 1, brightness: 1, alpha: 1)
    }
}

let paintBrush = Color2.Purple
paintBrush.actualColor


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
