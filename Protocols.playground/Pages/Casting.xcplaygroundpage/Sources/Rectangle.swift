public struct Rectangle {
    let topLeftCorner: Vertex
    let size: Size
    
    public init(topLeftCorner: Vertex, width: Double, height: Double) {
        self.topLeftCorner = topLeftCorner
        self.size = Size(width: width, height: height)
    }
    
    private init(topLeftCorner: Vertex, size: Size) {
        self.topLeftCorner = topLeftCorner
        self.size = size
    }
    
    public func moveByX(deltaX: Double) -> Rectangle {
        guard let movedTopLeftCorner = topLeftCorner.moveByX(deltaX) as? Vertex else {
            return self
        }
        return Rectangle(topLeftCorner: movedTopLeftCorner, size: size)
    }
}

extension Rectangle: CustomStringConvertible {
    public var description: String {
        return "\(size)  at \(topLeftCorner)"
    }
}

extension Rectangle: Equatable{}
public func ==(lhs: Rectangle, rhs: Rectangle) -> Bool {
    return lhs.size == rhs.size && lhs.topLeftCorner == rhs.topLeftCorner
}