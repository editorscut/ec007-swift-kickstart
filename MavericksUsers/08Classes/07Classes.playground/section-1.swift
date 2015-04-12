class BasketballTeam {
    var name, affiliation: String
    convenience init(name: String) {
        self.init(name: name, affiliation: "Intramural Team")
    }
    init(name:String, affiliation: String) {
        println("designated initializer before property inits in BasketballTeam")
        self.name = name
        self.affiliation = affiliation
        println("designated initializer after property inits in BasketballTeam")
    }
    func colorCommentary() -> String {
        return "The \(affiliation) \(name)"
    }
}


class ProfessionalBasketballTeam: BasketballTeam {
    let proLeague: String
    convenience init() {
        println("convenience initializer before self.init in ProfessionalBasketballTeam")
        self.init(name: "Globetrotters", affiliation: "Harlem", league: "Independent League")
        println("convenience initializer after self.init in ProfessionalBasketballTeam")
    }
    init(name: String, affiliation: String, league:String) {
        println("designated initializer before self.init in ProfessionalBasketballTeam")
        self.proLeague = league
        super.init(name: name, affiliation: affiliation)
        println("designated initializer after self.init in ProfessionalBasketballTeam")
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
}
let trotters = ProfessionalBasketballTeam()
trotters.colorCommentary()
