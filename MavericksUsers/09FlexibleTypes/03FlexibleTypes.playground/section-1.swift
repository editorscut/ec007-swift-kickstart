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

// version 1
func payEmployee(employee : Employee) -> Int {
    if employee is SalariedEmployee {
        return numberOfHoursInStandardWeek * employee.hourlyWage
    } else {
        return 0
    }
}
//
/* version 2 with error
func payEmployee(employee : Employee) -> Int {
    if employee is SalariedEmployee {
        return numberOfHoursInStandardWeek * employee.hourlyWage
    } else {
        return employee.numberOfHours * employee.hourlyWage
    }
}
*/
/* version 3 with error
func payEmployee(employee : Employee) -> Int {
    if employee is SalariedEmployee {
        return numberOfHoursInStandardWeek * employee.hourlyWage
    } else if employee is HourlyEmployee {
        return employee.numberOfHours * employee.hourlyWage
    } else {
        return 0
    }
}
*/

let manager = SalariedEmployee(hourlyWage: 100)
payEmployee(manager)

