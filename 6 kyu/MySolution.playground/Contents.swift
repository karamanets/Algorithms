import UIKit

// My solution tasks from  - CodeWars

//📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌
// Task 🦉 ➤ 1️⃣
// Find two numbers in an array that sum to 23
func twoSum(array: [Int], target: Int) -> [Int] {
    
    var dictionary: [Int:Int] = [:]
    var resultArray: [Int] = []
    
    for (item, number) in array.enumerated() {
        if let index = dictionary[target - number] {
            resultArray.append(index)
            resultArray.append(item)
            return resultArray
        }
        dictionary[number] = item
    }
    return resultArray
}
twoSum(array: [2,3,6,7,8,33,44,54,23,12,54,2,9,6,31,20,98,76], target: 23) // O(N)
//📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌
// Task 🦉 ➤ 
