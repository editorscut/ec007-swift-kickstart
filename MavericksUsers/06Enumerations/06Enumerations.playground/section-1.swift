enum BasketballPosition: String {
    case PointGuard = "point guard", ShootingGuard = "shooting guard"
    case SmallForward = "small forward", PowerForward = "power forward"
    case Center = "center"
}
let ballHandler = BasketballPosition.ShootingGuard
let ballHandlerDescription = ballHandler.rawValue

var spursPlayers: [BasketballPosition:String]

spursPlayers = [.PointGuard: "Tony Parker",
    .ShootingGuard: "Danny Green",
    .SmallForward: "Kawhi Leonard",
    .PowerForward: "Tim Duncan",
    .Center: "Tiago Splitter"]

func checkTheFloor() -> Bool {
    return spursPlayers.count == 5
}
checkTheFloor()
spursPlayers[.ShootingGuard] = "Manu Ginobili"
for (position, playerName) in spursPlayers {
    println("The \(position.rawValue) is \(playerName).")
}
