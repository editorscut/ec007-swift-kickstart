//: ### Will Set Did Set
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
import Foundation

struct Vertex {
    private(set) var x: Double {
        willSet {
            print("The value of x is changing from \(self.x) to \(newValue).")
        }
        didSet {
            if x == 6.0 {
                x = -6.0
                print("The proposed new value of x was 6, we're changing it to -6.")
            } else {
                print("The value of x has changed from \(oldValue) to \(x).")

            }
        }
    }
    private(set) var y: Double
    
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
