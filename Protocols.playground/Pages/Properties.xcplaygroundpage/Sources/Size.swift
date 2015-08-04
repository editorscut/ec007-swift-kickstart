struct Size {
    let width,height: Double
}

extension Size: CustomStringConvertible {
    var description: String {
        return "\(width) by \(height)"
    }
}

extension Size: Equatable{}
func ==(lhs: Size, rhs: Size) -> Bool {
    return lhs.width == rhs.width && lhs.height == rhs.height
}