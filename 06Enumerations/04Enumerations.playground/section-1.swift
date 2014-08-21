enum BasketballPosition: Int {
    case PointGuard = 1, ShootingGuard
    case SmallForward, PowerForward
    case Center
}
var potentialBallHandler: BasketballPosition?
potentialBallHandler = BasketballPosition.fromRaw(3)

if potentialBallHandler != nil {
    let ballHandler = potentialBallHandler!
    let positionNumber = ballHandler.toRaw()
}

if let ballHandler = potentialBallHandler {
    let positionNumber = ballHandler.toRaw()
}
