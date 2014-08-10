import Foundation

prefix operator  √ {}

prefix func √ (argument:Double) -> Double {
    return sqrt(argument)
}
infix operator  ^-^ {precedence 160}

func ^-^ (number:Double, power: Double) -> Double {
    return pow(number, power)
}

postfix operator ^^ {}

postfix func ^^ (number:Double) -> Double {
    return number * number
}

struct Vertex {
    var x,y: Double
    var distanceFromOrigin:Double {
        let origin:Vertex = Vertex(x: 0, y: 0)
        return distanceFrom(origin)
    }
    mutating func scaleBy(multiplier:Double) {
        x *= multiplier
        y *= multiplier
    }
    mutating func moveByX(x:Double, y:Double) {
        self.x += x
        self.y += y
    }
    func coordinates() -> (Double, Double) {
        return (x, y)
    }
    func distanceFrom(otherPoint: Vertex) -> Double {
        let deltaX = otherPoint.x - self.x
        let deltaY = otherPoint.y - self.y
        let distance = √( deltaX^^ + deltaY^^ )
        return distance
    }
}
var point = Vertex(x: 3.0, y: 4.0)
point.scaleBy(3)
point
point.moveByX(2, y: 5)
point


/* example of Objective-C port to calculate the time between two dates
let aMomentAgo = NSDate()
for i in 1...1000{
    println("\(i)")
}
let now = NSDate()
let durationOfForLoop = now.timeIntervalSinceDate(aMomentAgo)
*/
