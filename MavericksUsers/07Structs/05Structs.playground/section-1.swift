import Foundation

struct Vertex {
    let x,y: Double
    
    func coordinates() -> (Double, Double) {
        return (x, y)
    }
    func distanceFrom(otherPoint: Vertex) -> Double {
        let deltaX = otherPoint.x - self.x
        let deltaY = otherPoint.y - self.y
        let distance = sqrt(deltaX * deltaX + deltaY * deltaY)
        return distance
    }
}
let pointOne = Vertex(x: 3.0, y: 4.0)
let pointTwo = Vertex(x: -2.0, y: 16.0)
pointOne.distanceFrom(pointTwo)

let (pointOneX, pointOneY) = pointOne.coordinates()
pointOneX
pointOneY
