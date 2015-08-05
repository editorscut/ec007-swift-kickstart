//: ### Extensions
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)


extension Int {
    mutating func doubleInPlace() {
        self = self * 2
    }
}
var two = 2
two.doubleInPlace()
two

extension Int {
    func double() -> Int {
        return self * 2
    }
}

two
two.double()
two
two = two.double()
two


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
