import UIKit

var originalArray = [1, 2, 2, 3, 4, 1, 4, 5]
var newArray: [Int] = []

for element in originalArray {
    newArray.append(element * 2)
}
print(newArray)
