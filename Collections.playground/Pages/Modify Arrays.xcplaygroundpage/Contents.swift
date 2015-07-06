//: ### Modify Arrays

var coffeeDrinks = [String]()
coffeeDrinks.count

var drinkSizes = Array(count: 3, repeatedValue: "Really Big")
drinkSizes[1] = "Big"
drinkSizes.append("Huge")
drinkSizes.insert("Moderate", atIndex: 1)
drinkSizes[0 ... 1] = ["Medium"]
drinkSizes[2 ... 2] = ["Bigger", "Jumbo"]
drinkSizes += ["Huger"]
drinkSizes = drinkSizes + ["Hugest"]
drinkSizes.removeLast()
drinkSizes.removeAtIndex(2)
drinkSizes[2 ... 3] = []
drinkSizes.removeAll(keepCapacity: true)
if !drinkSizes.isEmpty {
    drinkSizes.removeLast()
}
drinkSizes.count
drinkSizes

// causes a fatal error: drinkSizes[25] = "Out of range"

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
