enum BasketballPosition: Int {
    case PointGuard = 1, ShootingGuard
    case SmallForward, PowerForward
    case Center
}
var potentialBallHandler: BasketballPosition?
potentialBallHandler = BasketballPosition(rawValue: 3)

if potentialBallHandler != nil {
    let ballHandler = potentialBallHandler!
    let positionNumber = ballHandler.rawValue
}

if let ballHandler = potentialBallHandler {
    let positionNumber = ballHandler.rawValue
}

let someInt = 3
let aDouble = Double(someInt)