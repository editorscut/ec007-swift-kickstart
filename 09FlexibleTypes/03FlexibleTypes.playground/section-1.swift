let fortyHours = 40
var hourlyRate:Int?

func weeklyWage() -> Int {
    let actualRate = (hourlyRate ?? 0)
    return fortyHours * actualRate
}

func weeklyWage(hours:Int) -> (regular: Int, overtime: Int) {
    let actualRate = (hourlyRate ?? 0)
    let regularHours = min(hours, 40)
    let overtimeHours = max(hours - 40, 0)
    let regularWage = regularHours * actualRate
    let overtimeWage = Double (overtimeHours * actualRate ) * 1.5
    return (regularWage, Int (overtimeWage))
}

hourlyRate = 50
weeklyWage()

let fullTime = weeklyWage()

let partTimeWorker = weeklyWage(30)
let busyWorker = weeklyWage(50)
