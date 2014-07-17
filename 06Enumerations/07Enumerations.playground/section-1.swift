enum BasketballPosition {    case PointGuard, ShootingGuard    case SmallForward, PowerForward(Int, String)    case Center}

// In text - not needed for this example
enum FormOfIdentification {
        case SocialSecurityCard(Int, Int, Int)
        case DriversLicense(String)
}

// back to the example

let tonyParker = BasketballPosition.PointGuard
let timDuncan = BasketballPosition.PowerForward(21, "Tim Duncan")
let kyleAnderson = BasketballPosition.PowerForward(5, "Kyle Anderson")

var ballHandler = timDuncan //replace this with tonyParker or kyleAnderson to see other results

var colorCommentary = ""

switch ballHandler {
case BasketballPosition.PowerForward(let uniformNumber, let playerName):
    colorCommentary = "The ball handler is number \(uniformNumber), power forward \(playerName)."
default:
    colorCommentary = "I can't see who has the ball."
}

colorCommentary