//: ### Value and Reference Types
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

var x = 7
var y = x
x = 5
print("x = \(x), y = \(y)")

import UIKit

var xField = UITextField()
xField.text = "x"
var yField = xField
print("x = \(xField.text!), y = \(yField.text!)")
yField.text = "y"
print("x = \(xField.text!), y = \(yField.text!)")


var xNumbers = [0, 1, 2, 3]
var yNumbers = xNumbers
xNumbers[0] = 100
print("x = \(xNumbers), y = \(yNumbers)")

var xFields = [xField, yField]
var yFields = xFields
var zField = UITextField()
zField.text = "z"
yFields[0] = zField
print("x = \(xFields[0].text!), y = \(yFields[0].text!)")
yFields[1].text = "Changed"
print("x = \(xFields[1].text!), y = \(yFields[1].text!)")



//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
