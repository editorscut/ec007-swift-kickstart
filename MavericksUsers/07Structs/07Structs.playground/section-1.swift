import Foundation

prefix operator  √ {}

prefix func √ (argument: Double) -> Double {
    return sqrt(argument)
}
infix operator  ^-^ {precedence 160}

func ^-^ (number: Double, power: Double) -> Double {
    return pow(number, power)
}

postfix operator ^^ {}

postfix func ^^ (number: Double) -> Double {
    return number * number
}

struct Vertex {
    var x,y: Double
    var distanceFromOrigin: Double {
    get {
        let origin:Vertex = Vertex(x: 0, y: 0)
        return distanceFrom(origin)
    }
    set (newDistanceFromOrigin) {
        let multiplier = newDistanceFromOrigin/distanceFromOrigin
        x *= multiplier
        y *= multiplier
    }
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
var pointOne = Vertex(x: 3.0, y: 4.0)
pointOne.distanceFromOrigin
pointOne.distanceFromOrigin = 10
pointOne

var pointTwo = Vertex(x: -2.0, y: 16.0)
pointOne.distanceFrom(pointTwo)
let (pointOneX, pointOneY) = pointOne.coordinates()
pointOneX
pointOneY

