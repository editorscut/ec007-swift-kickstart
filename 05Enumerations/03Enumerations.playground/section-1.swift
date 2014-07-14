enum BasketballPosition:Int {
    case PointGuard = 1, ShootingGuard
    case SmallForward, PowerForward
    case Center
}
var ballHandler = BasketballPosition.ShootingGuard
let positionNumber = ballHandler.toRaw()
var colorCommentary = "The \(positionNumber) has the ball."
switch ballHandler.toRaw() {
case 4:
    colorCommentary = "The Power Forward with the ball."
case 1,2:
    colorCommentary = "One of the guards has the ball."
default:
    colorCommentary = "The ball needs to go to the Point Guard."
}
colorCommentary