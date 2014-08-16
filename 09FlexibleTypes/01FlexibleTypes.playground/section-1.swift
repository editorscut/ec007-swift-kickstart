var numberOfHours = 0
var hourlyRate:Int?

/* version 1
func totalFee() -> Int {
    if let validHourlyRate = hourlyRate {
        return numberOfHours * validHourlyRate
    } else {
        return 0
    }
}
*/

func totalFee() -> Int {
    var actualHourlyRate = 0
    if let validHourlyRate = hourlyRate {
        actualHourlyRate = validHourlyRate
    }
    return numberOfHours * actualHourlyRate
}

numberOfHours = 40
totalFee()
hourlyRate = 50
totalFee()
