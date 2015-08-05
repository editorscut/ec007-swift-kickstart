public struct Rectangle {
    let topLeftCorner: Vertex
    let size: Size
    public let location: Vertex
    
    public init(topLeftCorner: Vertex, width: Double, height: Double) {
        self.topLeftCorner = topLeftCorner
        self.size = Size(width: width, height: height)
        location = Vertex(x: topLeftCorner.x + size.width/2, y: topLeftCorner.y + size.height/2)
    }
}

extension Rectangle: Movable {
    private init(topLeftCorner: Vertex, size: Size) {
        self.topLeftCorner = topLeftCorner
        self.size = size
        location = Vertex(x: topLeftCorner.x + size.width/2, y: topLeftCorner.y + size.height/2)
    }
    public func moveByX(deltaX: Double) -> Rectangle {
        let movedTopLeftCorner = topLeftCorner.moveByX(deltaX)
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