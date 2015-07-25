//: ### Transforming Arrays

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)


func transform<T, U>(input: [T], byApplying f: (T) -> U) -> [U] {
    var transformedArray = [U]()
    for element in input {
        transformedArray.append(f(element))
    }
    return transformedArray
}

let numberOfCopies = [9, 12, 7, 15, 20]

let isBiggerThanTen = transform(numberOfCopies){$0 > 10}

isBiggerThanTen

let revenue = transform(numberOfCopies){Double($0) * 0.99 * 0.70}

revenue




//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
