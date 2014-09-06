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
    func list() -> String
}

class Team {
    var players = [Player]()
    func list() -> String {
        var temp = ""
        for player in players {
            temp += player.name + "\n"
        }
        return temp
    }
}

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
let penguins = HockeyTeam()
cavs.add(tonyParker)
cavs.list()
cavs.add(sidneyCrosbey)
