enum BasketballPosition: String {
    case PointGuard = "point guard", ShootingGuard = "shooting guard"
    case SmallForward = "small forward", PowerForward = "power forward"
    case Center = "center"
}
let ballHandler = BasketballPosition.ShootingGuard
let ballHandlerDescription = ballHandler.rawValue
