struct Vertex {
    var x, y: Double
}
var pointOne = Vertex(x: 3.0, y: 4.0)
var pointTwo = pointOne

pointOne.x = 6.0
pointOne.x
pointTwo.x

pointTwo.y = 8.0
pointOne.y
pointTwo.y