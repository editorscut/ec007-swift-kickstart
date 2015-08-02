//: ### Equatable
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

struct Vertex {
    let x, y: Double
}

extension Vertex: CustomStringConvertible {
    var description: String {
        return "(\(x), \(y))"
    }
}

extension Vertex: Equatable{}
func ==(lhs: Vertex, rhs: Vertex) -> Bool {
    return lhs.x == rhs.x && lhs.y == rhs.y
}

let pointThreeFour = Vertex(x: 3.0, y: 4.0)
let pointFiveSix = Vertex(x: 5.0, y: 6.0)
let anotherPointThreeFour = Vertex(x: 3.0, y: 4.0)

pointThreeFour == anotherPointThreeFour
pointThreeFour == pointFiveSix

pointThreeFour != anotherPointThreeFour
pointThreeFour != pointFiveSix


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
