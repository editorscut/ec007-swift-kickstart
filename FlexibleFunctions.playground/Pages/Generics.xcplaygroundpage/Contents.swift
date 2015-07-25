//: ### Generics

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)


func modify<T>(input: T, byApplying f: (T) -> T) -> T {
    return f(input)
}

let two = modify(1){input in input * 2}

let three = modify(1.5){input in input * 2.0}

let greeting = modify("Hello"){input in input + ", World!"}

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
