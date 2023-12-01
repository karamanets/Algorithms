//
//  BubbleSort.swift
//  Algorithms
//
//  Created by Alex Karamanets on 29/11/2023.
//

import Foundation

//🔥 Simple Bubble sort Algorithm
//🔥 Compares adjacent elements, and swaps them if they are in the wrong order.


func bubbleSort<T: Comparable>(array: inout [T]) {
    let n = array.count
    var swapped: Bool

    //📌 Outer loop
    for i in 0..<n {
        swapped = false
        
        //📌 Inner loop
        for j in 0..<(n-i-1) {
            if array[j] > array[j+1] {
                //📌 Swap elements if they are in the wrong order
                array.swapAt(j, j+1)
                swapped = true
            }
        }
        if !swapped {
            //📌 If no swaps were made, the array is already sorted
            break
        }
    }
}
