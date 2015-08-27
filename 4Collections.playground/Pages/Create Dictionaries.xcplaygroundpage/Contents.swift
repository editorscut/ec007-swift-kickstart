//: ### Create Dictionaries
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

let numbers = ["one":1, "two":2, "three":3]
var moreNumbers: [String: Int]

let numbersKeys = numbers.keys
let numbersValues = numbers.values

for number in numbers.keys {
    print("\(number) : \(numbers[number])")
}

print("\n") // just creating some space in the output

for number in numbers.keys {
    print("\(number) : \(numbers[number]!)")
}


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
