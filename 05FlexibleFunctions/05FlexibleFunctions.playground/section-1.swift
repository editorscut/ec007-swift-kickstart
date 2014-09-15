import Foundation

var coffeeDrinks = ["Drip", "Espresso", "Americano", "Cappuccino", "Latte"]


// Notice you can nest /* */ comments

/* This version of emphasize() goes with version 1 and 2 below
func emphasize(inout theContentsOf array: [String],
               byApplying modification: (String) -> String)  {
    for i in 0 ..< array.count {
        array[i] = modification(array[i])
    }
} 

/* version 1

emphasize(theContentsOf: &coffeeDrinks, byApplying: {(phrase: String) -> String in
return phrase + "!"})
*/
/* version 2
emphasize(theContentsOf: &coffeeDrinks) {(phrase: String) -> String in
    return phrase + "!"}
*/
*/

// this version of emphasize goes with the remaining versions below


func emphasize(inout array: [String],
              modification: (String) -> String) {
        for i in 0 ..< array.count {
            array[i] = modification(array[i])
        }
}

/* version 3
emphasize(&coffeeDrinks) {(phrase: String) -> String in
    return phrase + "!"}
*/

/* version 4
emphasize(&coffeeDrinks) {(phrase) in return phrase + "!"}
*/

// version 5 is my favorite

emphasize(&coffeeDrinks) {phrase in phrase + "!"}

/* version 6 feels like Perl
emphasize(&coffeeDrinks) {$0 + "!"}
*/

coffeeDrinks
