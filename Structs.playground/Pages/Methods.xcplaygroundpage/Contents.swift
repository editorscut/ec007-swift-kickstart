//: ### Methods
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
// mutating version
//struct Vertex {
//    var x: Double
//    let y: Double
//    
//    mutating func moveByX(deltaX: Double) {
//        x = x + deltaX
//    }
//    
//}

struct Vertex {
    let x,y: Double
    
    func moveByX(deltaX: Double) -> Vertex {
        return Vertex(x: x + deltaX, y: y)
    }
}

var point = Vertex(x: 3.0, y: 4.0)
point.moveByX(5)

extension Vertex: CustomStringConvertible {
    var description: String {
        return "(\(x), \(y))"
    }
}

extension Vertex: Equatable{}
func ==(lhs: Vertex, rhs: Vertex) -> Bool {
    return lhs.x == rhs.x && lhs.y == rhs.y
}


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
