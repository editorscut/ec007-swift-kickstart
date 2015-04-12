protocol PlayerDescribable {
    func playerDescription() -> String
}

enum BasketballPosition {    case PointGuard(Int, String), ShootingGuard(Int, String)    case SmallForward(Int, String), PowerForward(Int, String)    case Center(Int, String)
    
    var uniformNumber: Int {
    get {
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
    }
    
    var playerName: String {
    get {
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
    }
    }}

extension BasketballPosition: PlayerDescribable {
    func playerDescription() -> String {
    return "The ball handler is number \(self.uniformNumber), \(self.playerName)."
    }
}


var ballHandler = BasketballPosition.PowerForward(21, "Tim Duncan")

func commentary (position: PlayerDescribable) -> String {
    return position.playerDescription()
}

let colorCommentary = commentary(ballHandler)
enum HockeyPosition: String {
    case Goalie = "goalie"
    case LeftDefenseman = "left d", RightDefenseman = "right d"
    case LeftWing = "left wing", RightWing = "right wing", Center = "center"
}

extension HockeyPosition: PlayerDescribable {
    func playerDescription() -> String {
        return "The puck handler is the \(self.rawValue)."
    }
}

var puckHandler = HockeyPosition.RightDefenseman
let hockeyCommentary = commentary(puckHandler)

