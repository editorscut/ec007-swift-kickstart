let coffeeDrinks = ["Drip", "Espresso", "Americano", "Cappuccino", "Latte"]
func item(#number: Int) -> String {
    return "\n ( \(number) ) "
}
var results = ""
/* method 1
for  var index = 0; index  < coffeeDrinks.count; index++  {
    results += item(number: index + 1) + coffeeDrinks[index]
}
*/

/* method 2
for index in 0 ... (coffeeDrinks.count - 1) {
    results += item(number: index + 1) + coffeeDrinks[index]
}
*/

/* method 3
for index in 0 ..< coffeeDrinks.count  {
results += item(number: index + 1) + coffeeDrinks[index]
} 
*/

/* method 4
for kindOfDrink in coffeeDrinks {
    results += kindOfDrink + "\n"
}
*/

for (index, kindOfDrink) in enumerate(coffeeDrinks) {
    results += item(number: index + 1) + kindOfDrink
}
results






