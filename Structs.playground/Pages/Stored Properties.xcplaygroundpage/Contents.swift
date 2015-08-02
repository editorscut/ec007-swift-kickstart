//: ### Stored Properties
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

struct Vertex {
    let x, y: Double
    
    init(x: Double = 3.0, y: Double = 4.0) {
        self.x = x
        self.y = y
    }
    init(bothXandY t: Double) {
        self.init(x:t, y: t)
    }
}

let pointThreeFour = Vertex()
let pointSevenEight = Vertex(x: 7.0, y: 8.0)
let pointFiveFive = Vertex(bothXandY: 5.0)
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
