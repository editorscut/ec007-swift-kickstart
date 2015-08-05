//: ### Closure Expressions
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)


func modify(input: Int, byApplying f: (Int) -> Int) -> Int {
    return f(input)
}

let four = modify(2, byApplying: {(input: Int) -> Int in
                                      return input * 2
                                 })

let six = modify(3){(input: Int) -> Int in
                        return input * 2
                   }
let eight = modify(4){input in return input * 2}

let ten = modify(5){input in input * 2}

let twelve = modify(6){$0 * 2}

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
