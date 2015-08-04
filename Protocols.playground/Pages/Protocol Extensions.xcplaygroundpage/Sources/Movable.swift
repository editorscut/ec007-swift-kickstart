public protocol Movable {
    var location: Vertex {get}
    func moveByX(deltaX: Double) -> Self
    func shiftRight() -> Self
    func whereAmI() -> Vertex
}

extension Movable {
    public func shiftRight() -> Self {
        return moveByX(1)
    }
}



extension Movable {
    public func whereAmI() -> Vertex {
        return self.location
    }
}