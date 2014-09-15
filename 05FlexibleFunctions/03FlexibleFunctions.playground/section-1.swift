import Foundation

var coffeeDrinks = ["Drip", "Espresso", "Americano", "Cappuccino", "Latte"]

func emphasize(inout theContentsOf array: [String]) {
    for i in 0 ..< array.count {
        array[i] = array[i].uppercaseString
    }
}

emphasize(theContentsOf: &coffeeDrinks)
coffeeDrinks
