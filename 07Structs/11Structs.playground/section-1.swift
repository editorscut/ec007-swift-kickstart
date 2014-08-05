enum BasketballPosition:Int {
    case PointGuard, ShootingGuard, SmallForward, PowerForward, Center
    func name() -> String {
        let names = ["point guard", "shooting guard", "small forward", "power forward", "center"]
        return names[self.toRaw()]
    }
}

struct BasketballPlayer {
    let name:String
    let number:Int
    let position:BasketballPosition
    
    func colorCommentary() -> String {
        return "wearing number \(number), \(position.name()),  \(name)"
    }
}

let tonyParker = BasketballPlayer(name: "Tony Parker", number: 9, position: BasketballPosition.PointGuard)

tonyParker.colorCommentary()
