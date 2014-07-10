var numbers = [String:Int]()
numbers["one"] = 3
numbers["too"] = 4
numbers["one"] = 1
numbers["two"] = 2
numbers.removeValueForKey("too")
numbers.removeValueForKey("four")
numbers.count
numbers

