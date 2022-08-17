//
//  File.swift
//  
//
//  Created by Pete Smith on 05/11/2021.
//

import Foundation

public extension Array where Element: Comparable {

    /// Sorts the elements of the `Array` in place using the 'Quick Sort' algorithm
    mutating func mergeSort() {
        guard count > 1 else { return }

        let midpoint = count/2

        var left = Array(self[0..<midpoint])
        var right = Array(self[midpoint..<count])

        left.mergeSort()
        right.mergeSort()

        var i = 0, j = 0, k = 0

        while i < left.count && j < right.count {
            if left[i] < right[j] {
                self[k] = left[i]
                i += 1
            } else {
                self[k] = right[j]
                j += 1
            }
            k += 1
        }

        while i < left.count {
            self[k] = left[i]
            i += 1
            k += 1
        }

        while j < right.count {
            self[k] = right[j]
            j += 1
            k += 1
        }
    }
}

