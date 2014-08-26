import UIKit

var primaryColor:UIColor?
var accentColor:UIColor?

primaryColor = UIColor.redColor()

let fillColor: UIColor = (primaryColor ?? UIColor.yellowColor())
let strokeColor: UIColor = (accentColor ?? UIColor.blueColor())

fillColor
strokeColor