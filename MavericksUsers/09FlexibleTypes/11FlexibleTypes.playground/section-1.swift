protocol Player {
    var name: String { get }
}

struct BasketballPlayer: Player {
    let name: String
}
struct HockeyPlayer: Player {
    let name: String
}

let tonyParker = BasketballPlayer(name: "Tony Parker")
let lebronJames = BasketballPlayer(name: "Lebron James")
let sidneyCrosbey = HockeyPlayer(name: "Sidney Crosbey")

protocol Groupable {
    typealias TeamPlayer
    func add(player: TeamPlayer)
}

class Team {
    var players = [Player]()
    func list() -> String {
        return players.map{$0.name}.reduce("Roster:"){$0 + "\n" + $1}
    }
}

/* version with TeamPlayer as the type for the add() parameter
class BasketballTeam: Team, Groupable {
typealias TeamPlayer = BasketballPlayer
    func add(player: TeamPlayer) {
        players.append(player)
    }
}
class HockeyTeam: Team, Groupable {
    typealias TeamPlayer = HockeyPlayer
    func add(player: TeamPlayer) {
        players.append(player)
    }
}
*/
class BasketballTeam: Team, Groupable {
    typealias TeamPlayer = BasketballPlayer
    func add(player: BasketballPlayer) {
        players.append(player)
    }
}
class HockeyTeam: Team, Groupable {
    typealias TeamPlayer = HockeyPlayer
    func add(player: HockeyPlayer) {
        players.append(player)
    }
}
let cavs = BasketballTeam()
cavs.add(lebronJames)
cavs.add(tonyParker)
cavs.list()
// cavs.add(sidneyCrosbey) this is an error (on purpose)
