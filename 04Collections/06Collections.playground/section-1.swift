let numbers = ["one":1, "two":2, "three":3]
var moreNumbers:[String:Int]
// much later ...
moreNumbers = ["four"  : 4,
               "five"  : 5,
               "six"   : 6,
               "seven" : 7]
let moreNumberKeys = [String](moreNumbers.keys)
let moreNumberValues = [Int](moreNumbers.values)
