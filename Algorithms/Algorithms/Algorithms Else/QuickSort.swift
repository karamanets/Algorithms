//
//  QuickSort.swift
//  Algorithms
//
//  Created by Alex Karamanets on 09/12/2023.
//

import Foundation


func quickSort<T: Comparable>(_ array: [T]) -> [T] {
    
    ///📌 If the array has 1 or fewer elements, it's already sorted, so we return the array as is.
    guard array.count > 1 else { return array }

    ///📌 We choose the pivot element, typically from the middle of the array.
    let pivot = array[array.count / 2]
    
    ///📌 We partition the array into three sub-arrays:
    let less = array.filter { $0 < pivot }
    let equal = array.filter { $0 == pivot }
    let greater = array.filter { $0 > pivot }

    ///📌 We recursively apply the quickSort function to the less and greater sub-arrays.
    ///📌 The final sorted array is obtained by concatenating the sorted less, equal, and greater arrays.
    return quickSort(less) + equal + quickSort(greater)
}
