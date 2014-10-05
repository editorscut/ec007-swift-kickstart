func sayHi(toTheFollowingPeople people: String...) -> (count: Int, peopleList: String) {
    return (people.count, people.reduce("Hello"){$0 + ", \n " + $1})
}

sayHi(toTheFollowingPeople: "Swift Programmer", "Obj-C Old-timer")

sayHi(toTheFollowingPeople: "Swift Programmer", "Obj-C Old-timer").0

sayHi(toTheFollowingPeople: "Swift Programmer", "Obj-C Old-timer").1

sayHi(toTheFollowingPeople: "Swift Programmer", "Obj-C Old-timer").count

sayHi(toTheFollowingPeople: "Swift Programmer", "Obj-C Old-timer").peopleList

