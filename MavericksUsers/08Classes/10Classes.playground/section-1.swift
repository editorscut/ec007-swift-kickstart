// MARK: Struct Example

struct Size {
    var width: Double = 10.0 {
        didSet {
            if width < height {
                width = height
            }
        }
    }
    var height: Double = 5.0 {
        didSet {
            if height > width {
                height = width
            }
        }
    }
}

var size = Size()
size.height = 8
size
size.height = 20
size

// MARK: Continuing with classes

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
        return "The \(affiliation) \(name) "
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
            comment += "of the " + validLeague
        }
        return comment
    }
}

class NBATeam: ProfessionalBasketballTeam {
    init(name: String, affiliation: String) {
        super.init(name: name, affiliation: affiliation, league: "NBA")
    }
    var roster:[String] = [String](){
        didSet(previousRoster) {
            let count = roster.count
            let previousCount = previousRoster.count
            let existingTeamHasValidRoster = previousCount >= 8 && previousCount <= 12
            if count < 8 && existingTeamHasValidRoster {
                println("You need \(8 - count) more. Not changing roster.")
                roster = previousRoster
            } else if count > 12 && existingTeamHasValidRoster {
                println("This is \(count - 12) more than allowed. Not changing roster.")
                roster = previousRoster
            }
            println("The roster is \(roster). \n")
        }
    }
}

let jazz = NBATeam(name: "Jazz", affiliation: "Utah")
jazz.roster += ["Favors", "Kanter", "Burks", "Burke", "Hayward", "Booker", "Gobert", "Felix"]
jazz.roster.removeLast()
jazz.roster += ["Novak", "Evans",  "Clark"]
jazz.roster += ["Exum", "Hood"]


