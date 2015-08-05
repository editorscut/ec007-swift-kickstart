//: ### By Value
//: [TOC](TOC) | [Previous](@previous) | Next

struct Vertex {
    var x, y: Double
}

extension Vertex: CustomStringConvertible {
    var description: String {
        return "(\(x), \(y))"
    }
}
var pointOne = Vertex(x: 3.0, y: 4.0)
var pointTwo = pointOne
pointOne.x = 6.0
pointTwo.y = 8.0
pointOne
//: [TOC](TOC) | [Previous](@previous) | Next
