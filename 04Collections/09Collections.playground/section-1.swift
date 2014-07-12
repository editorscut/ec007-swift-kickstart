let numbers = ["one":1, "two":2, "three":3]
let theKeys = [String](numbers.keys)
let theValues = [Int](numbers.values)

for numberKey in theKeys {
    println("The value of \(numberKey) is \(numbers[numberKey]).")
}
for number in numbers {
    println("The value of \(number.0) is \(number.1).")
}
for (spelledOutNumbers, numerals) in numbers {
    println("The value of \(spelledOutNumbers) is \(numerals).")
}


