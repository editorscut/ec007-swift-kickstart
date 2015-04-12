struct Publisher {
    typealias USDollars = Int
    var authors = [ String : Author ]()
    // MARK: Royalty calculations
    func royalties() -> USDollars {
        return 1000
    }
    /** USDollars is an Int */
    func royaltiesOnFirstBookForAuthorWithName(authorName: String) -> USDollars {
        return (authors[authorName]?.titles.first?.royalties() ?? 0)
    }
    // MARK: Utilities
    func someUtilityMethod() {
    }
}

struct Author {
    var titles = [Title]()
}

struct Title {
    let numberSold: Int
    // TODO: Introduce USDollars typealias and return USDollars from royalties
    func royalties() -> Int {
        return Int( 0.15 * Double(numberSold))
    // FIXME: Replace magic number 0.15 with a constant
    }
}

let murderByOptionals = Title(numberSold: 400)
let oneHitWonder = Author(titles: [murderByOptionals])

let aspiringWriter = Author()

let publisher = Publisher(authors: ["Determined": aspiringWriter, "Fluff": oneHitWonder])

publisher.royaltiesOnFirstBookForAuthorWithName("Determined")
let royaltiesOnFluff = publisher.royaltiesOnFirstBookForAuthorWithName("Fluff")
publisher.royaltiesOnFirstBookForAuthorWithName("Not here")
