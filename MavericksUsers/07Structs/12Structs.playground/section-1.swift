protocol Playable {
    var name: String { get }
}
struct BasketballPlayer: Playable {
    let name: String
}
struct HockeyPlayer {
    let name: String
}
extension HockeyPlayer: Playable {}
struct DigitalMusicPlayer {
    let format: String
}
func announceNameFor(player: Playable) {
    println(player.name)
}

let tonyParker = BasketballPlayer(name: "Tony Parker")
let lebronJames = BasketballPlayer(name: "Lebron James")
let sidneyCrosbey = HockeyPlayer(name: "Sidney Crosbey")

println(tonyParker.name)
announceNameFor(tonyParker)

announceNameFor(sidneyCrosbey)
/* version 1
func canPlayOneOnOne(playerOne: Playable,playerTwo: Playable) -> Bool {
    return playerOne.name != playerTwo.name
}
*/
func canPlayOneOnOne<T: Playable>(playerOne: T,playerTwo: T) -> Bool {
    return playerOne.name != playerTwo.name
}

canPlayOneOnOne(tonyParker, tonyParker)
//canPlayOneOnOne(tonyParker, sidneyCrosbey)  // error works with version 1
canPlayOneOnOne(tonyParker, lebronJames)
