enum BasketballPosition:String {
    case PointGuard = "point guard", ShootingGuard = "shooting guard"
    case SmallForward = "small forward", PowerForward = "power forward"
    case Center = "center"
}

var playerOne = BasketballPosition.PointGuard
var playerTwo = playerOne

playerOne.toRaw()
playerTwo.toRaw()

playerOne = .ShootingGuard

playerOne.toRaw()
playerTwo.toRaw()

playerTwo = .Center

playerOne.toRaw()
playerTwo.toRaw()