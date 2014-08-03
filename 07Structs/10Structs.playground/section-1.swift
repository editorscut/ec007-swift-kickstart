struct Vertex {
    var x,y: Double
    mutating func moveByX(x:Double, y:Double) {
        self.x += x
        self.y += y
    }
}

struct Size {
    var width,height: Double
    mutating func scaleByWidth(width:Double, height:Double) {
        self.width *= width
        self.height *= height
    }
}

struct Rectangle {
    var topLeftCorner:Vertex
    var dimensions:Size
    var area:Double {
        return dimensions.height * dimensions.width
    }
    var perimeter:Double {
        return 2 * (dimensions.height + dimensions.width)
    }
    mutating func moveByX(x:Double, y:Double) {
        topLeftCorner.moveByX(x, y: y)
    }
    mutating func scaleByWidth(width:Double, height:Double) {
        dimensions.scaleByWidth(width, height: height)
    }
}

var rectangle = Rectangle(topLeftCorner: Vertex(x: 1, y: 3), dimensions: Size(width: 4, height: 8))
rectangle.moveByX(-1, y: -3)
rectangle
rectangle.scaleByWidth(3, height: 0.25)
rectangle
rectangle.perimeter
rectangle.area
