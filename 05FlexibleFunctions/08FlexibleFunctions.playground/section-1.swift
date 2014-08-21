import Foundation

var coffeeDrinks = ["Drip", "Espresso", "Americano", "Cappuccino", "Latte"]
var numbers = [5, 1, 4, 8, 2, 7]

/* version 1 with less explicit type
let emphasizedNumbers = numbers.map{a in "\(a)!"} */

/* version 2 with explicit parameter and return type */
let emphasizedNumbers = numbers.map{(Int a) -> String in "\(a)!"}
numbers
emphasizedNumbers

let emphasizedCoffeeDrinks = coffeeDrinks.map{drink in drink.uppercaseString + "!"}
coffeeDrinks
emphasizedCoffeeDrinks
