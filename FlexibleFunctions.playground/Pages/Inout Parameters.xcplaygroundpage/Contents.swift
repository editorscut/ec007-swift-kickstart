//: ### Inout Parameters
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)


var two = 2

func double(inout input: Int) {
    input = input * 2
}

two
double(&two)
two
double(&two)
two


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
