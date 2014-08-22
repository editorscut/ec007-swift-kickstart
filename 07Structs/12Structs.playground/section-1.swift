protocol PositionDescribable {
    var positionName: String { get }
}

enum BasketballPosition: Int {
    case PointGuard, ShootingGuard, SmallForward, PowerForward, Center
}
extension BasketballPosition: PositionDescribable {
    var positionName: String {
    let names = ["point guard", "shooting guard", "small forward", "power forward", "center"]
    return names[self.toRaw()]}
}


enum HockeyPosition: Int {
    case Goalie, LeftDefenseman, RightDefenseman, LeftWing, RightWing
    var positionName: String {
    let names = ["goalie", "left d", "right d", "left wing", "right wing"]
    return names[self.toRaw()]}
}

extension HockeyPosition: PositionDescribable {}

func describePosition(position: PositionDescribable) -> String {
    return position.positionName
}

println( describePosition(BasketballPosition.Center))

let hockeyPosition = HockeyPosition.RightWing
println(hockeyPosition.positionName)
println(describePosition(hockeyPosition))
