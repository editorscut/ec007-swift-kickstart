import Foundation

let numbers = [5, 1, 4, 8, 2, 7]
let coffeeDrinks = ["Drip", "Espresso", "Americano", "Cappuccino", "Latte"]

/* version 1
extension Array {
    func emphasize(modification:(T) -> T) -> [T]{
        var emphasizedArray = [T]()
        for element in self {
            emphasizedArray += [modification(element)]
        }
        return emphasizedArray
    }
}
*/

/* version 2
extension Array {
    func emphasize(modification:(T) -> T) -> [T]{
        return map{modification($0)}
    }
}
*/
 extension Array {
    func emphasize(modification:(T) -> T) -> [T]{
         return map{element in modification(element)}
    }
}


let emphasizedNumbers = numbers.emphasize{number in number * 100}
numbers
emphasizedNumbers
let emphasizedCoffeeDrinks = coffeeDrinks.emphasize{phrase in phrase + "!"}
coffeeDrinks
emphasizedCoffeeDrinks
