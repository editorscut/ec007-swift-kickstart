var coffeeDrinks = ["Drip", "Espresso", "Americano", "Cappuccino", "Latte"]

func emphasize(theContentsOf array:[String]) -> [String] {
    var temporaryArray = [String]()
    for element in array {
        temporaryArray += element.uppercaseString
    }
    return temporaryArray
}
let emphasizedDrinks = emphasize(theContentsOf: coffeeDrinks)
emphasizedDrinks
coffeeDrinks

coffeeDrinks = emphasize(theContentsOf: coffeeDrinks)
coffeeDrinks
