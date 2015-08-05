//: ### Computed Properties
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

import UIKit

enum Color {
    case Red
    case Green
    case Blue
    
    var actualColor: UIColor {
        switch self {
        case .Red:
            return UIColor.redColor()
        case .Green:
            return UIColor.greenColor()
        case .Blue:
            return UIColor.blueColor()
        }
    }
    
    func colorSwatch(width width: Int, height: Int) -> UIView {
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        myView.backgroundColor = self.actualColor
        return myView
    }
}


let crayon = Color.Green
crayon.actualColor
crayon.colorSwatch(width: 200, height: 100)

let paintBrush = Color.Red
paintBrush.actualColor
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
