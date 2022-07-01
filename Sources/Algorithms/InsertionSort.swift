//
//  InsertionSort.swift
//  
//
//  Created by Pete Smith on 23/10/2021.
//

import Foundation

public extension Array where Element: Comparable {

    /// Sorts the elements of the `Array` in place using the 'Insertion Sort' algorithm
    mutating func insertionSort() {
        for i in 0..<count {
            var j = i
            while j > 0 && self[j-1] > self[j] {
                swapAt(j, j-1)
                j -= 1
            }
        }
    }
}
