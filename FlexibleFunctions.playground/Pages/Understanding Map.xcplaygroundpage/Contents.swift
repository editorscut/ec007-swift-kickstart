//: ### Understanding Map

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

extension Array {
    func transform<U>(f:(Element) -> U) -> [U] {
        var transformedArray = [U]()
        for element in self {
            transformedArray.append(f(element))
        }
        return transformedArray
    }
}

let numberOfCopies = [9, 12, 7, 15, 20]

let isBiggerThanTen = numberOfCopies.transform{$0 > 10}

isBiggerThanTen

let revenue = numberOfCopies.transform{Double($0) * 0.99 * 0.70}

revenue


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
