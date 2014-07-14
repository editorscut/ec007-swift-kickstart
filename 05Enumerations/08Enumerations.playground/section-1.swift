enum BasketballPosition:String {
    case PointGuard = "point guard", ShootingGuard = "shooting guard"
    case SmallForward = "small forward", PowerForward = "power forward"
    case Center = "center"
}
enum BasketballPlayerInformation {
    case UniformNumber(Int)
    case PlayerName(String)
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
    for playerInfo in pointGuard {
        switch playerInfo {
        case let .UniformNumber(uniformNumber):
            colorCommentary += "Wearing number \(uniformNumber), "
        case let .PlayerName(playerName):
            colorCommentary += "it's \(playerName)."
        }
    }
}
colorCommentary
