let coffeeDrinks = ["Drip", "Espresso", "Americano", "Cappuccino", "Latte"]
func item(#number:Int) -> String {
    return "\n ( \(number) ) "
}
var results = ""

for (index, kindOfDrink) in enumerate(coffeeDrinks) {
    results += item(number: index + 1) + kindOfDrink
}
results
