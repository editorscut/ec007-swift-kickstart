//: ### Reference Types

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)


import UIKit

var textField = UITextField()
textField.text = "Hello"
textField.text

func modifyField(field: UITextField) {
    field.text
    field.text = "Goodbye"
    field.text
}
modifyField(textField)
textField.text

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
