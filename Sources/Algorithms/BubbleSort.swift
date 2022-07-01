//
//  BubbleSort.swift
//  
//
//  Created by Pete Smith on 09/10/2021.
//

import Foundation

public extension Array where Element: Comparable {

    /// Sorts the elements of the `Array` in place using the 'Bubble Sort' algorithm
    mutating func bubbleSort() {
        for i in 0..<count {
            var swapped = false
            for j in 0..<count - 1 - i {
                if self[j] > self[j+1] {
                    swapAt(j, j+1)
                    swapped = true
                }
            }
            if !swapped {
                return
            }
        }
    }
}
