//: ### Higher Order Functions

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)


let two = 2

func double(input: Int) -> Int {
    return input * 2
}

let four = double(two)

func modify(input: Int, byApplying f: (Int) -> Int) -> Int {
    return f(input)
}

let eight = modify(four, byApplying: double)

func addSeven(input: Int) -> Int {
    return input + 7
}

let fifteen = modify(eight, byApplying: addSeven)


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
