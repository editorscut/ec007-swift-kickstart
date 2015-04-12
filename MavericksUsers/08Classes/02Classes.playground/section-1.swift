/* version 1
class BasketballTeam {
    let name = "Jazz"
    let affiliation = "Utah"
}

var jazz = BasketballTeam()
*/

class BasketballTeam {
    let name, affiliation: String
    init(name: String, affiliation: String) {
        self.name = name
        self.affiliation = affiliation
    }
    func colorCommentary() -> String {
        return "The \(affiliation) \(name)"
    }
}
let jazz = BasketballTeam(name: "Jazz", affiliation: "Utah")
jazz.colorCommentary()
let buckeyes = BasketballTeam(name: "Buckeyes", affiliation: "Ohio State")
buckeyes.colorCommentary()
