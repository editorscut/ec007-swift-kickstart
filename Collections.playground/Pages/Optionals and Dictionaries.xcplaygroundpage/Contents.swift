//: ### Optionals and Dictionaries

let numbers = ["one":1, "two":2]
let one = numbers["one"]
let four = numbers["four"]

if let validNumber = one {
    print("Number has value: \(validNumber)")
} else {
    print("Number is nil")
}

func canUnwrap(potentialNumber: Int?) -> Bool {
    if let number = potentialNumber {
        print("Number has value: \(number)")
        return true
    } else {
        return false
    }
}

canUnwrap(one)
canUnwrap(four)

func guardedCanUnwrap(potentialNumber: Int?) -> Bool {
    guard let number = potentialNumber else {
        return false
    }
    print("Number has value: \(number)")
    return true
}

guardedCanUnwrap(one)
guardedCanUnwrap(four)

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
