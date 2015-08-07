//: ### Creating a Protocol
//: [TOC](TOC) | Previous | [Next](@next)
import Foundation

struct Vertex {
    private(set) var x, y: Double
    
    var magnitude: Double {
        get {
            return sqrt(x * x + y * y)
        }
        set {
            let multiplier = newValue / magnitude
            x *= multiplier
            y *= multiplier
        }
    }
    
    init(x: Double = 3.0, y: Double = 4.0) {
        self.x = x
        self.y = y
    }
    
}

var pointThreeFour = Vertex()
pointThreeFour.magnitude
pointThreeFour.magnitude = 10.0
pointThreeFour

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
