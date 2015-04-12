var coffeeDrinks = Array(count: 5, repeatedValue: "Cappuccino")
//var coffeeDrinks = [String](count: 5, repeatedValue: "Cappuccino")

coffeeDrinks[0] = "Drip"

coffeeDrinks[2...4] = ["Espresso", "Latte"]

// coffeeDrinks[7] = "Mocha"  //this is an out of range error

let drink = coffeeDrinks.removeAtIndex(1)
drink

if coffeeDrinks.count > 1 {
    coffeeDrinks.removeAtIndex(1)
}

if !coffeeDrinks.isEmpty {
    coffeeDrinks.removeLast()
}

coffeeDrinks.append("Decaf")
coffeeDrinks = coffeeDrinks + ["Mocha"]
coffeeDrinks += ["Cold Brew"]

coffeeDrinks.insert("French Press", atIndex: 1)

coffeeDrinks.count
coffeeDrinks
