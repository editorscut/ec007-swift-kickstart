let numbers = ["one":1, "two":2]

/* version 1
if numbers["one"] != nil {
    let one = numbers["one"]!
    3 + one
} else {
    println("one is nil")
}

if numbers["four"] != nil {
    let four = numbers["four"]!
    7 + four
} else {
    println("four is nil")
}
*/
if let one = numbers["one"] {
    3 + one
} else {
    println("one is nil")
}

if let four = numbers["four"] {
    7 + four
} else {
    println("four is nil")
}

