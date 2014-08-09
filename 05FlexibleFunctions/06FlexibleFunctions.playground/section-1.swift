import Foundation

var coffeeDrinks = ["Drip", "Espresso", "Americano", "Cappuccino", "Latte"]

/* This version of emphasize() goes with version 1 and 2 below
func emphasize(inout theContentsOf array:[String],
               byApplying modification:(String) -> String)  {
    for i in 0 ..< array.count {
        array[i] = modification(array[i])
    }
} */
func emphasize(inout array:[String],
              modification:(String) -> String) {
        for i in 0 ..< array.count {
            array[i] = modification(array[i])
        }
}


/* version 1

emphasize(theContentsOf: &coffeeDrinks, byApplying: {(phrase:String)->String in
                                                      return phrase + "!"})
*/
/* version 2
emphasize(theContentsOf: &coffeeDrinks) {(phrase:String)->String in
    return phrase + "!"} */

/* version 3
emphasize(&coffeeDrinks) {(phrase:String)->String in
                           return phrase + "!"} */

/* version 4
emphasize(&coffeeDrinks) {(phrase) in return phrase + "!"} */

/* version 5
emphasize(&coffeeDrinks) {phrase in phrase + "!"} */

emphasize(&coffeeDrinks) {$0 + "!"}
coffeeDrinks
