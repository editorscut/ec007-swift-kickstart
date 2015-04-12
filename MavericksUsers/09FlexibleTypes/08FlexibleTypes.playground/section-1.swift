let numberOfHoursInStandardWeek = 40

protocol Payable {
    func weeklyPay() -> Int
}

struct Salesperson: Payable {
    var weeklySales: Int
    func weeklyPay() -> Int {
        return weeklySales/8
    }
}

enum Expenses: Payable {
    case Rent(Int)
    case Supplies(Double, Int)
    func weeklyPay() -> Int {
        switch self {
        case .Rent(let rentPerWeek):
            return rentPerWeek
        case .Supplies(let rate, let units):
            return Int(rate * Double(units))
        }
    }
}

class Employee: Payable  {
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

func calculatePay(payee : Payable) -> Int {
    return payee.weeklyPay()
}

let manager = SalariedEmployee(hourlyWage: 100)
calculatePay(manager)

let partTimeEngineer = HourlyEmployee(hourlyWage: 60)
partTimeEngineer.numberOfHours = 30
calculatePay(partTimeEngineer)

let underpaidPartTimeEngineer = HourlyEmployee(hourlyWage: 40)
underpaidPartTimeEngineer.numberOfHours = 30
calculatePay(underpaidPartTimeEngineer)

let engineer = HourlyEmployee(hourlyWage: 60)
engineer.numberOfHours = 50
calculatePay(engineer)

let salesperson = Salesperson(weeklySales: 20000)
calculatePay(salesperson)

let suburbanOffice = Expenses.Rent(7500)
calculatePay(suburbanOffice)

let printerPaper = Expenses.Supplies(4.99, 18)
calculatePay(printerPaper)
