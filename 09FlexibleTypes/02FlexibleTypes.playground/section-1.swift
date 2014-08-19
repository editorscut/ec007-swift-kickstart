let fortyHours = 40
var hourlyRate:Int?

func actualRate() -> Int {
    return (hourlyRate ?? 0)
}
func weeklyWage() -> Int {
    return fortyHours * actualRate()
}
func overtimeRate() -> Double {
    return Double(actualRate()) * 1.5
}

var intArray = [1,2,3]

intArray += [4]
//intArray += [5.0]

var doubleArray = [1.5,2.5,3.5]
doubleArray += [4.5]
doubleArray += [5]

var calculation = 0.0
for doubles in doubleArray {
    calculation += doubles * 10
}
calculation
let ten = 10
10 * doubleArray[2]

var mixedArray = [1, 2.0, 3, 4.0]

func weeklyWage(hours:Int) -> (regular: Int, overtime: Int) {
    let actualRate = (hourlyRate ?? 0)
    let regularHours = min(hours, 40)
    let overtimeHours = max(hours - 40, 0)
    let regularWage = regularHours * actualRate
    let overtimeWage = overtimeHours * actualRate * 2
    return (regularWage, overtimeWage)
}

hourlyRate = 50
weeklyWage()

let fullTime = weeklyWage()

let partTimeWorker = weeklyWage(30)
let busyWorker = weeklyWage(50)
