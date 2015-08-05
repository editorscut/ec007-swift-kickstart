//: ### Enumerate Arrays
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

let coffeeDrinks = ["Drip", "Espresso", "Americano", "Cappuccino"]

for index in 0 ..< coffeeDrinks.count {
    print(coffeeDrinks[index])
}

for kindOfDrink in coffeeDrinks {
    print(kindOfDrink)
}

for (index, kindOfDrink) in coffeeDrinks.enumerate() {
    print("(\(index + 1)) " + kindOfDrink)
}
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
