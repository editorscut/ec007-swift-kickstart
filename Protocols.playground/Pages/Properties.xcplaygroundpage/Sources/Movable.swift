public protocol Movable {
    var location: Vertex {get}
    func moveByX(deltaX: Double) -> Self
}