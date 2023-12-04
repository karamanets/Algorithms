//
//  LinearSearch.swift
//  Algorithms
//
//  Created by Alex Karamanets on 01/12/2023.
//

import Foundation

//🔥 The time complexity of linear search is O(n), where n is the size of the collection.
//🔥 This means that the time it takes to perform a linear search increases linearly with the size of the collection.
//🔥 For larger datasets, this can make linear search less efficient compared to algorithms with lower time complexities, especially when searching for an element towards the end of a large collection.

func linearSearch<T: Comparable>(_ array: [T], _ target: T) -> Int? {
    for (index, element) in array.enumerated() {
        if element == target {
            //📌 Return the index if the target is found
            return index
        }
    }
    //📌 Return nil if the target is not found
    return nil
}
