func sayHi(toTheFollowingPeople people: String...) -> (count: Int, peopleList: String) {
    return (people.count, people.reduce("Hello"){$0 + ", " + $1})
}

sayHi(toTheFollowingPeople: "Swift Programmer", "Obj-C Old-timer")