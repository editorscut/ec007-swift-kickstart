import Foundation

var coffeeDrinks = ["Drip", "Espresso", "Americano", "Cappuccino", "Latte"]

/* version 1
func emphasize(theContentsOf array: [String]) -> [String] {
    for element in array {
        element = element.uppercaseString
    }
    return array
}
*/

func emphasize(theContentsOf array: [String]) -> [String] {
    var temporaryArray = [String]()
    for element in array {
        temporaryArray += [element.uppercaseString]
    }
    return temporaryArray
}

let emphasizedDrinks = emphasize(theContentsOf: coffeeDrinks)
emphasizedDrinks
coffeeDrinks

coffeeDrinks = emphasize(theContentsOf: coffeeDrinks)
coffeeDrinks
