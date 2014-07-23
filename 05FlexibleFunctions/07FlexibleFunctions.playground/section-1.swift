import Foundation

var coffeeDrinks = ["Drip", "Espresso", "Americano", "Cappuccino", "Latte"]
var numbers = [5, 1, 4, 8, 2, 7]

/* without generics
func emphasize(inout array:[String],
               modification:(String) -> String) -> [String] {
        for i in 0 ..< array.count {
            array[i] = modification(array[i])
        }
        return array
}
func emphasize(inout array:[Int],
    modification:(Int) -> Int) -> [Int] {
        for i in 0 ..< array.count {
            array[i] = modification(array[i])
        }
        return array
} */
func emphasize<T>(inout array:[T],
    modification:(T) -> T) -> [T] {
        for i in 0 ..< array.count {
            array[i] = modification(array[i])
        }
        return array
}

emphasize(&coffeeDrinks) {phrase in phrase + "!"}
coffeeDrinks
emphasize(&numbers) {number in number * 100}
numbers
