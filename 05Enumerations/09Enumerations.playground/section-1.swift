enum BasketballPosition:String {
    case PointGuard = "point guard", ShootingGuard = "shooting guard"
    case SmallForward = "small forward", PowerForward = "power forward"
    case Center = "center"
}
enum BasketballPlayerInformation {
    case UniformNumber(Int)
    case PlayerName(String)
    
    func nameOrNumber() -> String {
        switch self {
        case let .UniformNumber(uniformNumber):
            return "\(uniformNumber)"
        case let .PlayerName(name):
            return "\(name)"
        default:
            return "<missing info>"
        }
    }
}

var spursPlayers:[BasketballPosition:[BasketballPlayerInformation]]

spursPlayers = [.PointGuard: [.UniformNumber(9),
    .PlayerName("Tony Parker")],
    .ShootingGuard: [.UniformNumber(4),
        .PlayerName("Danny Green")],
    .SmallForward: [.UniformNumber(2),
        .PlayerName("Kawhi Leonard")],
    .PowerForward: [.UniformNumber(21),
        .PlayerName("Tim Duncan")],
    .Center: [.UniformNumber(22),
        .PlayerName("Tiago Splitter")]]

var colorCommentary = ""
if let pointGuard = spursPlayers[BasketballPosition.PointGuard] {
    let number = pointGuard[0].nameOrNumber()
    let name = pointGuard[1].nameOrNumber()
    colorCommentary += "Wearing number \(number), it's \(name)."
}
colorCommentary
