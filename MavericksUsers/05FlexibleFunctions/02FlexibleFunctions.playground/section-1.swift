import Foundation

var coffeeDrinks = ["Drip", "Espresso", "Americano", "Cappuccino", "Latte"]

func emphasize(var theContentsOf array: [String]) -> [String] {
    for i in 0 ..< array.count {
        array[i] = array[i].uppercaseString
    }
    return array
}
let emphasizedDrinks = emphasize(theContentsOf: coffeeDrinks)
emphasizedDrinks
coffeeDrinks

coffeeDrinks = emphasize(theContentsOf: coffeeDrinks)
coffeeDrinks
