public func +(left: Vertex, right: Vertex) -> Vertex {
    return Vertex(x: left.x + right.x, y: left.y + right.y)
}

public struct Vertex {
    let x,y: Double
    
    public init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}

extension Vertex: Movable {
    public var location: Vertex {
        return self
    }
    public func moveByX(deltaX: Double) -> Vertex {
        return Vertex(x: x + deltaX, y: y)
    }
}

extension Vertex: CustomStringConvertible {
    public var description: String {
        return "(\(x), \(y))"
    }
}

extension Vertex: Equatable{}
public func ==(lhs: Vertex, rhs: Vertex) -> Bool {
    return lhs.x == rhs.x && lhs.y == rhs.y
}