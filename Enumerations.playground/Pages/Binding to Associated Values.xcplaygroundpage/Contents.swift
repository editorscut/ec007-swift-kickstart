//: ### Binding to Associated Values
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

enum PrimaryColor: String {
    case Red
    case Yellow
    case Blue
}

enum Desktop {
    case Black
    case White
    case Color(PrimaryColor)
    case Tiled(PrimaryColor, PrimaryColor, Int, Int)
}

let backgrounds = [Desktop.Black, Desktop.Color(.Red), Desktop.White, Desktop.Color(.Blue)]

for background in backgrounds {
    switch background {
    case .Color(let primaryColor):
        print("This background color is \(primaryColor.rawValue).")
    default:
        print("This background has no color.")
    }
}
print("")

for background in backgrounds {
    if case .Color(let primaryColor) = background where primaryColor == .Red {
        print("This background is Red.")
    } else {
        print("This background is not Red.")
    }
}

print("")

for case .Color(let primaryColor) in backgrounds where primaryColor != .Red {
    print("This background is \(primaryColor.rawValue). It isn't .Red.")
}

let tiledBackground = Desktop.Tiled(.Red, .Blue, 5, 7)

switch tiledBackground {
case let .Tiled(firstColor, secondColor, numberOfRows, numberOfColumns):
    print("The background is tiled using colors \(firstColor.rawValue) and \(secondColor.rawValue) with \(numberOfRows) rows and \(numberOfColumns) columns.")
default:
    print("The background is not tiled.")
}

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
