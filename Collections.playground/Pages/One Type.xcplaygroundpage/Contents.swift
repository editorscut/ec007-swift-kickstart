//: ### One Type

let numbers = [0, 1, 2]

let three = numbers[1] + numbers[2]

//: The following is meant to illustrate why we don't create non-homogeneous arrays. Please, do not write code like this.

import Foundation
let badNumbers = [0, 1, 2, "Hello"]

let badThree = (badNumbers[0] as! NSNumber).integerValue + (badNumbers[1] as! NSNumber).integerValue


//: [TOC](TOC) | Previous | [Next](@next)
