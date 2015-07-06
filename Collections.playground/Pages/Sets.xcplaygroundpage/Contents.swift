//: ### Sets

var odds = Set<Int>()
for i in stride(from: 1, through: 10, by: 2) {
    odds.insert(i)
}
odds.insert(7)
//odds.remove(7)
odds.contains(7)

var primes: Set = [2,3,5,7]

let union = primes.union(odds)
let intersection = primes.intersect(odds)
let difference = odds.subtract(primes)
let symmetricDifference = odds.exclusiveOr(primes)

odds.intersectInPlace(primes)

intersection.isDisjointWith(union)
intersection.isSubsetOf(union)
intersection.isStrictSubsetOf(union)

for prime in primes {
    print("\(prime)")
}


odds.count
odds
primes







//: [TOC](TOC) | [Previous](@previous) | Next
