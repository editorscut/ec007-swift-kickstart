class BasketballTeam {
    var name: String
    var affiliation: String {
    willSet(newAffiliation) {
        println("Before: changing affiliation from \(affiliation) to \(newAffiliation)")
    }
    didSet(oldAffiliation){
        println("After: changed affiliation from \(oldAffiliation) to \(affiliation)")
    }
    }
    convenience init(name: String) {
        self.init(name: name, affiliation: "Intramural Team")
    }
    init(name: String, affiliation: String) {
        self.name = name
        self.affiliation = affiliation
    }
    func colorCommentary() -> String {
        return "The \(affiliation) \(name)"
    }
}


class ProfessionalBasketballTeam: BasketballTeam {
    let proLeague: String?
    override var affiliation: String {
    willSet(newAffiliation) {
        println("Before (subclass): changing affiliation from \(affiliation) to \(newAffiliation)")
    }
    didSet(oldAffiliation){
        println("After (subclass): changed affiliation from \(oldAffiliation) to \(affiliation)")
    }
    }
    convenience init() {
        self.init(name: "Globetrotters", affiliation: "Harlem", league: nil)
    }
    init(name: String, affiliation: String, league: String?) {
        self.proLeague = league
        super.init(name: name, affiliation: affiliation)
    }
    override func colorCommentary() -> String {
        var comment = super.colorCommentary()
        if let validLeague = proLeague {
            comment += " of the " + validLeague
        }
        return comment
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
let jazz = ProfessionalBasketballTeam(name: "Jazz", affiliation: "New Orleans", league: "NBA")
jazz.colorCommentary()
jazz.affiliation = "Utah"
jazz.colorCommentary()

