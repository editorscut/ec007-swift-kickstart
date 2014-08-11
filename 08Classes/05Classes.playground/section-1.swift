class BasketballTeam {
    var name, affiliation: String
    init(name: String, affiliation: String) {
        self.name = name
        self.affiliation = affiliation
    }
    func colorCommentary() -> String {
        return "The \(affiliation) \(name)"
    }
}

class ProfessionalBasketballTeam: BasketballTeam {
    let proLeague: String
    init(name: String, affiliation: String, league: String) {
        self.proLeague = league
        super.init(name: name, affiliation: affiliation)
    }
    override func colorCommentary() -> String {
        return super.colorCommentary() + " of the \(proLeague)"
    }
}
class CollegeBasketballTeam: BasketballTeam {
    let conference: String
    init(name: String, affiliation: String, conference: String) {
        self.conference = conference
        super.init(name: name, affiliation: affiliation)
    }
    override func colorCommentary() -> String {
        return super.colorCommentary() + " of the \(conference)"
    }
}
/* version one
let jazz = ProfessionalBasketballTeam(name: "Jazz", affiliation: "New Orleans", league:"NBA")
jazz.colorCommentary()
jazz.affiliation = "Utah"
jazz.colorCommentary()
let buckeyes = CollegeBasketballTeam(name: "Buckeyes", affiliation: "Ohio State", conference:"Big Ten")
buckeyes.colorCommentary()
*/

let originalJazz = ProfessionalBasketballTeam(name: "Jazz", affiliation: "New Orleans", league: "NBA")
let relocatedJazz = originalJazz
relocatedJazz.affiliation = "Utah"
originalJazz.colorCommentary()
relocatedJazz.colorCommentary()
