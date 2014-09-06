struct Publisher {
    typealias USDollars = Int
    var authors = [ String : Author ]()
    func royaltiesOnFirstBookForAuthorWithName(authorName: String) -> USDollars {
        return (authors[authorName]?.titles.first?.royalties() ?? 0)
    }
}

struct Author {
    var titles = [Title]()
}

struct Title {
    let numberSold: Int
    func royalties() -> Int {
        return Int( 0.15 * Double(numberSold))
    }
}

let murderByOptionals = Title(numberSold: 400)
let oneHitWonder = Author(titles: [murderByOptionals])

let aspiringWriter = Author()

let publisher = Publisher(authors: ["Determined": aspiringWriter, "Fluff": oneHitWonder])

publisher.royaltiesOnFirstBookForAuthorWithName("Determined")
publisher.royaltiesOnFirstBookForAuthorWithName("Fluff")
publisher.royaltiesOnFirstBookForAuthorWithName("Not here")