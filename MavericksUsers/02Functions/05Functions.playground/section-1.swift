func helloWorld(name: String = "World") {
    println("Hello, \(name)!")
}

func helloWorld(name: String, numberOfTimes: Int = 1) {
    println("Number of times: \(numberOfTimes)")
    for i in 1 ... numberOfTimes {
        print("\t(\(i)) ")
        helloWorld(name: name)
    }
}
helloWorld()
helloWorld(name: "Swift Programmer")
helloWorld("Former Obj-C Developer", numberOfTimes: 3)
helloWorld("I have a default parameter")
helloWorld(name: "I don't")
