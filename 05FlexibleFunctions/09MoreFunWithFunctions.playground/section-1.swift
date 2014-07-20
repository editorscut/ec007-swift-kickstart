var numbers = [5, 1, 4, 8, 2, 7]

/* I prefer not to use the type information for sort() and sorted()
let sortedNumbers = numbers.sorted{(a:Int, b:Int) in a < b} */

let sortedNumbers = numbers.sorted{a,b in a < b}
numbers
sortedNumbers

numbers.sort{a,b in a < b}
numbers
