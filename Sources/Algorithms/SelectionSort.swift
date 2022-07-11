//
//  SelectionSort.swift
//
//
//  Created by Pete Smith on 09/10/2021.
//

import Foundation

public extension Array where Element: Comparable {

    /// Sorts the elements of the `Array` in place using the 'Selection Sort' algorithm
    mutating func selectionSort() {
        for i in 0..<count {
            var minIndex = i
            for j in i+1..<count {
                if self[j] < self[minIndex] {
                    minIndex = j
                }
            }
            guard i != minIndex else { continue }
            swapAt(i, minIndex)
        }
    }
}
