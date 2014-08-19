let fortyHours = 40
var hourlyRate:Int?

/* version 1 error
func weeklyWage() -> Int {
    return fortyHours * hourlyRate
}
*/
/* version 2 error
func weeklyWage() -> Int {
    return fortyHours * hourlyRate!
}
*/


/* version 3 works great
func weeklyWage() -> Int {
    if let validHourlyRate = hourlyRate {
        return fortyHours * validHourlyRate
    } else {
        return 0
    }
}
*/

/* version 4 ternary operator
func weeklyWage() -> Int {
    return fortyHours * (hourlyRate != nil ? hourlyRate! : 0)
}
*/
/* version 5 coalescing operator
func weeklyWage() -> Int {
    return fortyHours * (hourlyRate ?? 0)
}
*/
/* version 6
func weeklyWage() -> Int {
    let actualRate = (hourlyRate ?? 0)
    return fortyHours * actualRate
}
*/
func actualRate() -> Int {
    return (hourlyRate ?? 0)
}

func weeklyWage() -> Int {
    return fortyHours * actualRate()
}
weeklyWage()
hourlyRate = 50
weeklyWage()
