enum BasketballPosition {    case PointGuard(Int, String), ShootingGuard(Int, String)    case SmallForward(Int, String), PowerForward(Int, String)    case Center(Int, String)
    
    var uniformNumber: Int { // note I've removed the get { and } lines
        switch self {
        case .PointGuard(let uniformNumber, _):
            return uniformNumber
        case .ShootingGuard(let uniformNumber, _):
            return uniformNumber
        case .SmallForward(let uniformNumber, _):
            return uniformNumber
        case .PowerForward(let uniformNumber, _):
            return uniformNumber
        case .Center(let uniformNumber, _):
            return uniformNumber
    }
    }
    var playerName: String {
        switch self {
    case .PointGuard(_, let playerName):
        return playerName
    case .ShootingGuard(_, let playerName):
            return playerName
    case .SmallForward(_, let playerName):
            return playerName
    case .PowerForward(_, let playerName):
                return playerName
    case .Center(_, let playerName):
                return playerName
    }
    }}

//let tonyParker = BasketballPosition.PointGuard(9, "Tony Parker")
//let timDuncan = BasketballPosition.PowerForward(21, "Tim Duncan")

var ballHandler = BasketballPosition.PowerForward(21, "Tim Duncan")
var colorCommentary = "The ball handler is number \(ballHandler.uniformNumber), \(ballHandler.playerName)."
