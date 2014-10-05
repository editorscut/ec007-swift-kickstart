enum BasketballPosition: Int {
    case PointGuard, ShootingGuard, SmallForward, PowerForward, Center
    static func count() -> Int {
        return 5
    }
    subscript(index: Int) -> BasketballPosition? {
        return BasketballPosition(rawValue: index)
    }
}


let spursPlayers = [BasketballPosition.PointGuard: "Tony Parker",
                                      .ShootingGuard: "Danny Green",
                                      .SmallForward: "Kawhi Leonard",
                                      .PowerForward: "Tim Duncan",
                                      .Center: "Tiago Splitter"]


let basketballPosition = BasketballPosition.PointGuard
basketballPosition[3]

for i in 0 ..< BasketballPosition.count() {
    if let position = basketballPosition[i] {
    println("Playing the \(position.rawValue + 1 ), it's \(spursPlayers[position]!).")
    } else {
        println("No one is playing the \(i + 1).")
    }
}
