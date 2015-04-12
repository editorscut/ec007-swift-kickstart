/* version 1
class BasketballTeam {
    let name, affiliation:String
    init(name:String, affiliation:String) {
        self.name = name
        self.affiliation = affiliation
    }
    func colorCommentary() -> String {
        return "The \(affiliation) \(name)"
    }
}

class ProfessionalBasketballTeam:BasketballTeam {
}
class CollegeBasketballTeam:BasketballTeam {
}
let jazz = ProfessionalBasketballTeam(name: "Jazz", affiliation: "Utah")
jazz.colorCommentary()
let buckeyes = CollegeBasketballTeam(name: "Buckeyes", affiliation: "Ohio State")
buckeyes.colorCommentary()
*/

class BasketballTeam {
    let name, affiliation:String
    init(name:String, affiliation:String) {
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
}
class CollegeBasketballTeam: BasketballTeam {
    let conference: String
    init(name: String, affiliation: String, conference: String) {
        self.conference = conference
        super.init(name: name, affiliation: affiliation)
    }
}

let jazz = ProfessionalBasketballTeam(name: "Jazz", affiliation: "Utah", league: "NBA")
jazz.colorCommentary()
let buckeyes = CollegeBasketballTeam(name: "Buckeyes", affiliation: "Ohio State", conference:"Big Ten")
buckeyes.colorCommentary()
