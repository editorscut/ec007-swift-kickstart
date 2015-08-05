//: ### Enumerate Dictionaries
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

let numbers = ["one":1, "two":2]

for numberKey in numbers.keys {
    print("The value of \(numberKey) is \(numbers[numberKey]!).")
}

for number in numbers {
    print("The value of \(number.0) is \(number.1).")
}

for (spelledOutNumber, numeral) in numbers {
    print("The value of \(spelledOutNumber) is \(numeral).")
}

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
