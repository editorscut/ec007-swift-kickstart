//: ### Type Alias
//: [TOC](TOC) | [Previous](@previous) | Next

/// Used to measure payments in United States Dollars

typealias USDollars = Double

/// Used to represent the count of a discrete number of items

typealias Count = Int

/// A function type that calculates revenue for a number of copies.

typealias RevenueCalculator = (Count) -> USDollars

/** The return value is the revenue in US Dollars. */

func revenueForCopies(numberSold: Count) -> USDollars {
    return Double(numberSold * 99 * 70/100)/100
}

revenueForCopies(6)

func totalRevenue(calculator: RevenueCalculator, copies: Count ...) -> USDollars {
    var runningTotal = 0.00
    for copy in copies {
        runningTotal += calculator(copy)
    }
    return runningTotal
}

totalRevenue(revenueForCopies, copies: 6, 3, 1)

//: [TOC](TOC) | [Previous](@previous) | Next
