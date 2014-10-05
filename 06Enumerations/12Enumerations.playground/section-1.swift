enum BasketballPosition:String {
    case PointGuard = "point guard", ShootingGuard = "shooting guard"
    case SmallForward = "small forward", PowerForward = "power forward"
    case Center = "center"
}

var playerOne = BasketballPosition.PointGuard
var playerTwo = playerOne

playerOne.rawValue
playerTwo.rawValue

playerOne = .ShootingGuard

playerOne.rawValue
playerTwo.rawValue

playerTwo = .Center

playerOne.rawValue
playerTwo.rawValue
