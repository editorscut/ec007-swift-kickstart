//: ### Nil

var name: String?
name = "Daniel"
print(name!)
name = nil
// this produces a runtime error print(name!)

import UIKit

let image = UIImage(named: "Kickstart.jpg")
let imageView = UIImageView()

if image != nil {
    let validImage = image!
    imageView.image = validImage
} else {
    print("There is no image named Kickstart.jpg")
}

if let validImage = image {
    imageView.image = validImage
} else {
    print("There is no image named Kickstart.jpg")
}


imageView.image


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
