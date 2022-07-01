//
//  QuickSort.swift
//  
//
//  Created by Pete Smith on 28/10/2021.
//

import Foundation

public extension Array where Element: Comparable {

    /// Sorts the elements of the `Array` in place using the 'Quick Sort' algorithm
    mutating func quickSort() {
        quickSort(0, self.count-1)
    }
}

private extension Array where Element: Comparable {

    mutating func quickSort(_ low: Int, _ high: Int) {
        guard low >= 0 && high >= 0 && low < high else { return }

        // Partition Array
        let partition = partition(low, high)

        quickSort(low, partition-1)
        quickSort(partition+1, high)
    }

    mutating func partition(_ low: Int, _ high: Int) -> Int {
        var i = low-1
        let pivotElement = self[high]

        for j in low...high {
            if self[j] < pivotElement {
                i += 1
                if i != j {
                    swapAt(i, j)
                }
            }
        }
        swapAt(i+1, high)
        return i+1
    }
}
