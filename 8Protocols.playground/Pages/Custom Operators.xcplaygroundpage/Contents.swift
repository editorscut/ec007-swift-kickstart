//: ### Custom Operators
//: [TOC](TOC) | [Previous](@previous) | Next

func shiftLeft<T: Movable>(movable: T) -> T {
    return movable.moveByX(-1)
}

prefix operator « {}
postfix operator » {}
infix operator ∆ {}


prefix func «<T: Movable>(movable: T) -> T {
    return movable.moveByX(-1)
}

postfix func »<T: Movable>(movable: T) -> T {
    return movable.moveByX(1)
}

func ∆<T: Movable>(leftMovable: T, rightMovable: T) -> (shiftedLeft: T, shiftedRight: T) {
    return («leftMovable, rightMovable»)
}

let point = Vertex(x: 3.0, y: 4.0)
let shiftedLeftPoint =  «point
let shiftedRightPoint = point»
let movedApartPoints = shiftedLeftPoint ∆ shiftedRightPoint
let sum = shiftedLeftPoint + shiftedRightPoint

//: [TOC](TOC) | [Previous](@previous) | Next
