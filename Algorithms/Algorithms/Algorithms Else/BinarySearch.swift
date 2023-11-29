//
//  BinarySearch.swift
//  Algorithms
//
//  Created by Alex Karamanets on 25/11/2023.
//

import Foundation

//🔥 Binary search is a search algorithm that finds the position of a target value within a sorted array.
//🔥 It works by repeatedly dividing the search interval in half.

func binarySearch<T: Comparable>(_ array: [T], target: T) -> Int? {
    /// Step 1️⃣ Input Validation: Check if the array is not empty
    guard !array.isEmpty else { return nil }

    /// Step 2️⃣  Initialization: Set up the initial search range
    var left: Int = 0
    var right: Int = array.count - 1

    /// Step 3️⃣ Loop while:  Continue searching until the search range is valid
    while left <= right {
        /// Step 4️⃣ Middle Index and Value:  Calculate the middle index and retrieve the middle value
        let middleIndex = (left + right) / 2
        let middleValue = array[middleIndex]

        /// Step 5️⃣ Comparison and Narrowing the Range:  Adjust the search range based on the middle value
        if middleValue == target {
            ///Step 6️⃣ Value Found:  If the middle value is equal to the target value, return the index
            return middleIndex
        } else if middleValue > target {
            /// If the middle value is greater, narrow the range to the left
            right = middleIndex - 1
        } else {
            /// If the middle value is smaller, narrow the range to the right
            left = middleIndex + 1
        }
    }
    ///Step 7️⃣ Exit the Loop: If the loop finishes without finding the value, return nil
    return nil
}


