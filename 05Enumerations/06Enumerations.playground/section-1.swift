enum BasketballPosition {
    case PointGuard, ShootingGuard
    case SmallForward, PowerForward(Int, String)
    case Center
}

let tonyParker = BasketballPosition.PointGuard
let timDuncan = BasketballPosition.PowerForward(21, "Tim Duncan")
let kyleAnderson = BasketballPosition.PowerForward(5, "Kyle Anderson")

var ballHandler:BasketballPosition
ballHandler = tonyParker
ballHandler = timDuncan //comment this line out to see results for tonyParker

var colorCommentary = ""

switch ballHandler {
case BasketballPosition.PowerForward(let uniformNumber, let playerName):
    colorCommentary = "The ball handler is number \(uniformNumber), power forward \(playerName)."
default:
    colorCommentary = "I can't see who has the ball."
}

colorCommentary
