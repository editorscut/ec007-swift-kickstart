enum BasketballPosition: Int {
    case PointGuard, ShootingGuard, SmallForward, PowerForward, Center
}

struct BasketballPlayer {
    let name: String
    let number: Int
    let position: BasketballPosition
}

let tonyParker = BasketballPlayer(name: "Tony Parker", number: 9, position: BasketballPosition.PointGuard)

tonyParker.name
tonyParker.number
tonyParker.position
