class BasketballTeam {
    var name, affiliation:String
    convenience init(name:String) {
        self.init(name:name, affiliation:"Intramural Team")
    }
    init(name:String, affiliation:String) {
        self.name = name
        self.affiliation = affiliation
    }
    func colorCommentary() -> String {
        return "The \(affiliation) \(name)"
    }
}


class ProfessionalBasketballTeam:BasketballTeam {
    let league: String?
    convenience init() {
        self.init(name:"Globetrotters", affiliation:"Harlem", league:nil)
    }
    init(name: String, affiliation: String, league:String?) {
        self.league = league
        super.init(name: name, affiliation: affiliation)
    }
    override func colorCommentary() -> String {
        var comment = super.colorCommentary()
        if let validLeague = league {
            comment += "of the \(league)"
        }
        return comment
    }
}
class CollegeBasketballTeam:BasketballTeam {
    let conference: String
    init(name: String, affiliation: String, conference:String) {
        self.conference = conference
        super.init(name: name, affiliation: affiliation)
    }
    override func colorCommentary() -> String {
        return super.colorCommentary() + " of the \(conference)"
    }
}
let trotters = ProfessionalBasketballTeam()
trotters.colorCommentary()

