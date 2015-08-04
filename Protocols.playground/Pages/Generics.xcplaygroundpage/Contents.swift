//: ### Generics
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

func shiftLeft<T: Movable>(movable: T) -> T {
    return movable.moveByX(-1)
}

let point = Vertex(x: 3.0, y: 4.0)
let shiftedLeftPoint = shiftLeft(point)
let rectangle = Rectangle(topLeftCorner: point, width: 200.0, height: 100.0)
let shiftedLeftRectangle = shiftLeft(rectangle)
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
