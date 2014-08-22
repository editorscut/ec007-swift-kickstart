/* vertex 1
struct Vertex {
    let x = 3.0
    let y = 4.0
}
let point = Vertex()
point
point.x
point.y
*/

/* vertex 2
struct Vertex {
    let x,y: Double
    init() {
        x = 3.0
        y = 4.0
    }
}
let point = Vertex()
point
point.x
point.y
*/
/* vertex 3
struct Vertex {
    let x,y: Double
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}
let point = Vertex(x: 7.0, y: 8.0)
*/
/* vertex 4
struct Vertex {
    let x,y: Double
    init(_ x: Double, _ y: Double) {
        self.x = x
        self.y = y
    }
}
let point = Vertex(5.0, 6.0)

*/

/* vertex 5
struct Vertex {
    let x,y: Double
    init() {
        self.init(3.0, 4.0)
    }
    init(_ x: Double, _ y: Double) {
        self.x = x
        self.y = y
    }
}
let pointOne = Vertex()
let pointTwo = Vertex(5.0, 6.0)
*/
/* vertex 6
struct Vertex {
    let x,y: Double
}
let pointTwo = Vertex(x: 3.0, y: 4.0)
*/

struct Vertex {
    let x = 3.0
    let y = 4.0
}
let pointOne = Vertex()
let pointTwo = Vertex(x: 5.0, y: 6.0)

