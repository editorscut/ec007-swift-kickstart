struct Publisher {
    var authors = [ String : Author ]()
    func royaltiesOnFirstBookForAuthorWithName(authorName: String) -> Int {
        return (authors[authorName]?.titles.first?.royalties() ?? 0)
    }
    /* nice version that returns an optional
    func royaltiesOnFirstBookForAuthorWithName(authorName: String) -> Int? {
        return authors[authorName]?.titles.first?.royalties()
    }
 */
    /* ugly version
    func royaltiesOnFirstBookForAuthorWithName(authorName: String) -> Int? {
        if let validAuthor = authors[authorName] {
            if let validFirst = validAuthor.titles.first {
                return validFirst.royalties()
            } else {
                return nil
            }
        } else {
            return nil
        }
    }
    */
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
