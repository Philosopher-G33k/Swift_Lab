import UIKit
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

var greeting = "Hello, playground"

extension Array {
    func myMap<T> (_ tranform : (Element) -> T) -> [T] {
        var result: [T] = []
        result.reserveCapacity(self.count)
        for x in self {
            result.append(tranform(x))
        }
        return result
    }
    
    func myReduce<T>(_ initialResult:T, _ transform: (T, Element)->T) -> T {
        var result: T = initialResult
        
        for element in self {
            result = transform(result, element)
        }
        
        return result
    }
    
    func myFilter (_ conditionCheck: (Element) -> Bool) -> [Element]  {
        var result:[Element] = []
        result.reserveCapacity(self.count)
        for x in self {
            if conditionCheck(x) {
                result.append(x)
            }
        }
        return result
    }
}

print([1,2,3,4,5].myReduce(0, +))

print([1,2,3,4,5].myMap{
    $0 * 2
})

print([1,2,3,4,5].myFilter({
    value in
    return value <= 3
}))



print(["{}", "()", "{)"].myFilter({
    value in
    return value == "{}" || value == "()"
}))
