import Foundation

var numbers = [5, 1, 4, 8, 2, 7]
var coffeeDrinks = ["Drip", "Espresso", "Americano", "Cappuccino", "Latte"]


extension Array {
    mutating func emphasize(modification: (T) -> T) {
            for i in 0 ..< self.count {
                self[i] = modification(self[i])
            }
    }
}


numbers.emphasize{number in number * 100}
numbers
coffeeDrinks.emphasize{phrase in phrase + "!"}
coffeeDrinks
