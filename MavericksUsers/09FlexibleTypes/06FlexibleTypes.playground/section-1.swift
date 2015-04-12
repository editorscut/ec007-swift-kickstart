let numberOfHoursInStandardWeek = 40

class Employee  {
    var hourlyWage: Int
    init(hourlyWage: Int) {
        self.hourlyWage = hourlyWage
    }
    func weeklyPay() -> Int {
        return 0
    }
}

class SalariedEmployee : Employee {
    override func weeklyPay() -> Int {
        return numberOfHoursInStandardWeek * hourlyWage
    }
}

class HourlyEmployee : Employee {
    var numberOfHours = 0
    override func weeklyPay() -> Int {
        switch numberOfHours {
        case 0...numberOfHoursInStandardWeek where hourlyWage < 50:
            return numberOfHours * hourlyWage + 30
        case numberOfHoursInStandardWeek...(24 * 7):
            let overtimeHours = numberOfHours - numberOfHoursInStandardWeek
            return (numberOfHours + overtimeHours) * hourlyWage
        default:
            return numberOfHours * hourlyWage
        }
    }
}

func payEmployee(employee : Employee) -> Int {
    return employee.weeklyPay()
}

let manager = SalariedEmployee(hourlyWage: 100)
payEmployee(manager)

let partTimeEngineer = HourlyEmployee(hourlyWage: 60)
partTimeEngineer.numberOfHours = 30
payEmployee(partTimeEngineer)

let underpaidPartTimeEngineer = HourlyEmployee(hourlyWage: 40)
underpaidPartTimeEngineer.numberOfHours = 30
payEmployee(underpaidPartTimeEngineer)

let engineer = HourlyEmployee(hourlyWage: 60)
engineer.numberOfHours = 50
payEmployee(engineer)