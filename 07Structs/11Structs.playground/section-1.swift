enum BasketballPosition:String {
    case PointGuard = "point guard", ShootingGuard = "shooting guard"
    case SmallForward = "small forward", PowerForward = "power forward"
    case Center = "center"
}

struct BasketballPlayer {
    let name:String
    let number:Int
    let position:BasketballPosition
    
    func colorCommentary() -> String {
        return "Playing \(position.toRaw()), it's number \(number), \(name)."
    }
}

let tonyParker = BasketballPlayer(name: "Tony Parker", number: 9, position: BasketballPosition.PointGuard)

tonyParker.colorCommentary()