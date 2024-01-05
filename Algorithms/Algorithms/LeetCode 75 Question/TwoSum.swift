//
//  TwoSum.swift
//  Algorithms
//
//  Created by Alex Karamanets on 05/01/2024.
//

import Foundation

//MARK: -  📌 Two Sum 📌

let array = [2,3,5,2,9,23,34,54,6,87,43,2,6,90,77,53,21,31,1,12,34,62,79]

//Example 1 - Brute Force
func twoSum1(_ array: [Int], _ target: Int) -> [Int] {
    let n = array.count
    for i in 0..<n {
        for j in 0..<n where j != i {
            if array[i] + array[j] == target {
                return [i, j]
            }
        }
    }
    return []
}

//Example 2
func twoSum2(_ array: [Int], _ target: Int) -> [Int] {
    
    var store = [Int: Int]()
    
    for i in 0...array.count-1 {
        
        if let firstIndex = store[array[i]] {
            
            return [firstIndex, i]
        }
        store[target-array[i]] = i
        print(store)
    }
    return []
}



let result1 = twoSum1(array, 6)
// print(result1) //⚠️ Output: [2, 18]

let result2 = twoSum2(array, 6)
// print(result2) //⚠️ Output: [2, 18]
