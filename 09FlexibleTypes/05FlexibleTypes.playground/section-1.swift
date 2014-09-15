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
        return numberOfHours * hourlyWage
    }
}

func payEmployee(employee : Employee) -> Int {
    return employee.weeklyPay()
}

let manager = SalariedEmployee(hourlyWage: 100)
payEmployee(manager)

let engineer = HourlyEmployee(hourlyWage: 60)
engineer.numberOfHours = 50
payEmployee(engineer)

