//: ### Option Sets
//: [TOC](TOC) | [Previous](@previous) | Next
struct ColorsWeLove: OptionSetType {
    let rawValue: Int
    static let Red = ColorsWeLove(rawValue: 1)
    static let Green = ColorsWeLove(rawValue: 2)
    static let Blue = ColorsWeLove(rawValue: 4)
}

var noColors: ColorsWeLove = []
noColors.contains(.Red)

var twoColors: ColorsWeLove = [.Red, .Blue]
twoColors.contains(.Red)
twoColors.contains(.Green)

//: [TOC](TOC) | [Previous](@previous) | Next
