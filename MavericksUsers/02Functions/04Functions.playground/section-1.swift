func helloWorld() {
    helloWorld("World")
}
func helloWorld(name: String) {
    println("Hello, \(name)!")
}
func helloWorld(name: String, numberOfTimes: Int) {
    println("Number of times: \(numberOfTimes)")
    for i in 1 ... numberOfTimes {
        print("\t(\(i)) ")
        helloWorld(name)
    }
}
helloWorld()
helloWorld("Swift Programmer")
helloWorld("Former Obj-C Developer", 3)
