//: ### Returning Tuples
//: [TOC](TOC) | [Previous](@previous) | Next


func hello(names: String...) -> (count: Int, peopleList: String) {
    return (names.count, names.reduce("Hello,"){$0 + "\n " + $1})
}


hello("Swift Programmer", "Swift 2 Developer")

hello("Swift Programmer", "Swift 2 Developer").count
hello("Swift Programmer", "Swift 2 Developer").peopleList


//: [TOC](TOC) | [Previous](@previous) | Next
