let numberOfHoursInStandardWeek = 40

class Employee  {
    var hourlyWage: Int
    init(hourlyWage: Int) {
        self.hourlyWage = hourlyWage
    }
}

class SalariedEmployee : Employee {
}

class HourlyEmployee : Employee {
    var numberOfHours = 0
}

/* version 1
func payEmployee(employee : Employee) -> Int {
    if employee is SalariedEmployee {
        return numberOfHoursInStandardWeek * employee.hourlyWage
    } else if employee is HourlyEmployee {
        let hourlyEmployee = employee as HourlyEmployee
        return hourlyEmployee.numberOfHours * hourlyEmployee.hourlyWage
    } else {
        return 0
    }
}
*/

func payEmployee(employee : Employee) -> Int {
    if employee is SalariedEmployee {
        return numberOfHoursInStandardWeek * employee.hourlyWage
    } else if let hourlyEmployee = employee as? HourlyEmployee {
        return hourlyEmployee.numberOfHours * hourlyEmployee.hourlyWage
    } else {
        return 0
    }
}

let manager = SalariedEmployee(hourlyWage: 100)
payEmployee(manager)

let engineer = HourlyEmployee(hourlyWage: 60)
engineer.numberOfHours = 50
payEmployee(engineer)

