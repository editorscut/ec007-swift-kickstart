enum BasketballPosition {
    case PointGuard, ShootingGuard
    case SmallForward, PowerForward
    case Center
}
var colorCommentary = ""
var ballHandler = BasketballPosition.ShootingGuard

switch ballHandler {
case .PowerForward:
    colorCommentary = "The Power Forward with the ball."
case .PointGuard, .ShootingGuard:
    colorCommentary = "One of the guards has the ball."
default:
    colorCommentary = "The ball needs to go to the Point Guard."
}
colorCommentary
