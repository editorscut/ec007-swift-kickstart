//: ### Error Type
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

enum InputSizeError: ErrorType {
    case NegativeNumberError
    case NumberIsTooLargeError(amountOver: Int)
}

func double(input: Int) throws -> Int {
    if input < 0 {
        throw InputSizeError.NegativeNumberError
    } else if input > 49 {
        throw InputSizeError.NumberIsTooLargeError(amountOver: input - 49)
    } else {
        return input * 2
    }
}


func cautiousDoubler(input: Int) {
    do {
        print("double", input, "=", try double(input))
    }
    catch InputSizeError.NumberIsTooLargeError(let excess) {
        print("Sorry, input is too big by", excess)
    }
    catch {
        print("Error:", error)
    }
}

cautiousDoubler(8)
cautiousDoubler(-8)
cautiousDoubler(80)

let ten = try! double(5)
// this is a runtime crash let negativeTwo = try! double(-1)

let six = try? double(3)
let negativeTwo = try? double(-1)
let twoHundred = try? double(100)

let ints = [6, -1, 12, 100, 20]
let doubleInts = ints.flatMap{element in try? double(element)}
doubleInts
let altDoubleInts = ints.flatMap{ try? double($0)}
altDoubleInts//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
