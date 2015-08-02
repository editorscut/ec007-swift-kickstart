//: ### Custom String Convertible
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

struct Vertex {
    let x, y: Double
}

extension Vertex: CustomStringConvertible {
    var description: String {
        return "(\(x), \(y))"
    }
}

let pointThreeFour = Vertex(x: 3.0, y: 4.0)


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
