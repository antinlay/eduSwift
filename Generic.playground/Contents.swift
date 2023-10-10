import UIKit

// Simple example
func swapTwoInts<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var intA = 3
var intB = 0131

swapTwoInts(&intA, &intB)

print("intA = \(intA)\nintB = \(intB)")

// Stack

struct IntStack {
    var items: [Int] = []
    mutating func push(_ item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
}

struct Stack<T> {
    var items: [T] = []
    mutating func push(_ item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
}

extension Stack {
    var topItem: T? {
        return items.isEmpty ? nil : items[items.count - 1]
    }
}

var stackOfStrings = Stack<String>()

stackOfStrings.push("LOLOLO")
stackOfStrings.push("FOFOFOFO")
stackOfStrings.push("ZOZOZOZO")
stackOfStrings.push("BOBOBO")

print(stackOfStrings.items)

stackOfStrings.pop()
stackOfStrings.pop()
stackOfStrings.pop()
stackOfStrings.pop()



print(stackOfStrings.topItem)
