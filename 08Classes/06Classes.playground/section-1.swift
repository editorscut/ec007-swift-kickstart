class BasketballTeam {
    var name, affiliation: String
    required convenience init(name: String) {
        self.init(name: name, affiliation: "Intramural Team")
    }
    required init(name: String, affiliation: String) {
        self.name = name
        self.affiliation = affiliation
    }
    func colorCommentary() -> String {
        return "The \(affiliation) \(name)"
    }
}

let pickupTeam = BasketballTeam(name: "5 Old Guys")
pickupTeam.colorCommentary()

class ProfessionalBasketballTeam: BasketballTeam {
    let proLeague: String
    convenience init() {
        self.init(name: "Globetrotters", affiliation: "Harlem", league: "Independent League")
    }
    init(name: String, affiliation: String, league: String) {
        self.proLeague = league
        super.init(name: name, affiliation: affiliation)
    }
    required init(name: String, affiliation: String) {
        proLeague = "Neighborhood League"
        super.init(name: name, affiliation: affiliation)
    }
    required convenience init(name: String) {
        self.init(name: name, affiliation: "Intramural Team", league: "Neighborhood League")
    }
    override func colorCommentary() -> String {
        return super.colorCommentary() + " of the " + proLeague
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
    required init(name: String, affiliation: String) {
        conference = "Neighborhood Conference"
        super.init(name: name, affiliation: affiliation)
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
