//: ### Option Sets
//: [TOC](TOC) | [Previous](@previous) | Next
import UIKit

struct ColorsWeLove: OptionSetType {
    let rawValue: Int
    static let Red = ColorsWeLove(rawValue: 1)
    static let Green = ColorsWeLove(rawValue: 2)
    static let Blue = ColorsWeLove(rawValue: 4)
}
var colors = [ColorsWeLove]()
colors = [.Red]
colors.append(.Blue)

colors.contains(.Blue)
colors.contains(.Green)

//: [TOC](TOC) | [Previous](@previous) | Next
