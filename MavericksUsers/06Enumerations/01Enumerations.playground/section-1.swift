enum BasketballPosition {
    case PointGuard, ShootingGuard
    case SmallForward, PowerForward
    case Center
}

var ballHandler = BasketballPosition.PointGuard

ballHandler = BasketballPosition.PowerForward
ballHandler = .SmallForward

var shooter: BasketballPosition

shooter = .PowerForward
