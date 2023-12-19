//
//  MergeSort.swift
//  Algorithms
//
//  Created by Alex Karamanets on 19/12/2023.
//

import Foundation

//📌 MergeSort Algorithm
func mergeSort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else {
        return array
    }
    let middleIndex = array.count / 2
    let leftArray = Array(array[..<middleIndex])
    let rightArray = Array(array[middleIndex...])

    return merge(mergeSort(leftArray), mergeSort(rightArray))
}

private func merge<T: Comparable>(_ left: [T], _ right: [T]) -> [T] {
    var leftIndex = 0
    var rightIndex = 0
    var result: [T] = []

    while leftIndex < left.count && rightIndex < right.count {
        if left[leftIndex] < right[rightIndex] {
            result.append(left[leftIndex])
            leftIndex += 1
        } else {
            result.append(right[rightIndex])
            rightIndex += 1
        }
    }
    if leftIndex < left.count {
        result.append(contentsOf: left[leftIndex...])
    }
    if rightIndex < right.count {
        result.append(contentsOf: right[rightIndex...])
    }
    return result
}
